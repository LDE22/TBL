using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using TBL.Models;
using TBL.Data;
using System.Diagnostics;

namespace TBL.Views
{
    public partial class SpecialistProfilePage : ContentPage
    {
        private readonly UserData _userData;
        public Command<TBL.Models.Service> BookServiceCommand { get; }
        private readonly int specialistId;

        public SpecialistProfilePage(int specialistId, UserData userData)
        {
            InitializeComponent();
            this.specialistId = specialistId;
            _userData = userData;
            BookServiceCommand = new Command<Service>(OnBookService);
            LoadSpecialistData(specialistId);
        }

        private async void LoadSpecialistData(int specialistId)
        {
            try
            {
                // Загрузка специалиста
                var specialist = await _userData.GetSpecialistByIdAsync(specialistId);
                BindingContext = specialist;

                // Загрузка услуг
                var services = await _userData.GetServicesBySpecialistAsync(specialistId);
                ServicesCollection.ItemsSource = services;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить данные: {ex.Message}", "OK");
            }
        }
        private async void OnBookService(Service service)
        {
            // Переход на страницу бронирования
            await Navigation.PushAsync(new BookingPage(service, _userData));

        }
        private async void OnStartChatClicked(object sender, EventArgs e)
        {
            try
            {
                var receiverId = specialistId; // Получите ID специалиста
                await Navigation.PushAsync(new ChatPage(receiverId, _userData, false));
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }
        private async void OnReportClicked(object sender, EventArgs e)
        {
            string comment = await DisplayPromptAsync("Жалоба", "Опишите проблему или причину жалобы:");

            if (!string.IsNullOrWhiteSpace(comment))
            {
                var ticket = new Ticket
                {
                    UserId = Preferences.Get("UserId", 0), // ID пользователя, отправляющего жалобу
                    TargetId = specialistId, // Используем SpecialistId как TargetId
                    Comment = comment,
                    Status = "Active",
                    CreatedAt = DateTime.UtcNow,
                    ModeratorId = 0,
                    ActionTaken = "none"
                };

                try
                {
                    await _userData.CreateTicketAsync(ticket);
                    await DisplayAlert("Успех", "Ваша жалоба успешно отправлена.", "OK");
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Не удалось отправить жалобу: {ex.Message}", "OK");
                }
            }
        }
    }
}
