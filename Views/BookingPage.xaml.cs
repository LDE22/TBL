using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Maui.Controls;
using TBL.Data;
using TBL.Models;

namespace TBL.Views
{
    public partial class BookingPage : ContentPage
    {
        private readonly Service _service;
        private readonly UserData _userData;
        public ObservableCollection<Schedule> AvailableTimes { get; set; } = new ObservableCollection<Schedule>();

        public ICommand ConfirmBookingCommand { get; }

        public BookingPage(Service service, UserData userData)
        {
            InitializeComponent();
            _userData = userData;
            _service = service;

            ConfirmBookingCommand = new Command<Schedule>(ConfirmBooking);

            Title = $"Бронирование: {_service.Title}";
            LoadAvailableTimes();

            BindingContext = this;
        }

        private async void LoadAvailableTimes()
        {
            try
            {
                var schedules = await _userData.GetSchedulesAsync(_service.SpecialistId);
                foreach (var schedule in schedules)
                {
                    AvailableTimes.Add(schedule);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить расписание: {ex.Message}", "OK");
            }
        }

        private async void ConfirmBooking(Schedule schedule)
        {
            try
            {
                var booking = new Booking
                {
                    SpecialistId = _service.SpecialistId,
                    ClientId = Preferences.Get("UserId", 0),
                    ServiceId = _service.Id,
                    Day = DateTime.UtcNow, // Используем дату из расписания
                    TimeInterval = schedule.WorkingHours
                };

                await _userData.BookServiceAsync(booking);

                await DisplayAlert("Успех", "Вы успешно записались на услугу!", "OK");
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось выполнить бронирование: {ex.Message}", "OK");
            }
        }
    }
}
