using TBL.Models;
using TBL.Data;
using System.Diagnostics;

namespace TBL.Views
{
    public partial class EditAddServicePage : ContentPage
    {
        private readonly UserData _userData;
        private Service _service;

        public EditAddServicePage(UserData userData, Service service = null)
        {
            InitializeComponent();
            _userData = userData;
            _service = service;

            if (_service != null) // Режим редактирования
            {
                ServiceTitleEntry.Text = _service.Title;
                ServiceDescriptionEditor.Text = _service.Description;
                ServicePriceEntry.Text = _service.Price.ToString();
                SaveButton.Text = "Обновить";
            }
            else // Режим добавления
            {
                ServiceTitleEntry.Text = string.Empty;
                ServiceDescriptionEditor.Text = string.Empty;
                ServicePriceEntry.Text = string.Empty;
                SaveButton.Text = "Создать";
            }
        }

        private async void OnSaveButtonClicked(object sender, EventArgs e)
        {
            // Проверка корректности введенных данных
            if (string.IsNullOrWhiteSpace(ServiceTitleEntry.Text) ||
                string.IsNullOrWhiteSpace(ServicePriceEntry.Text) ||
                !decimal.TryParse(ServicePriceEntry.Text, out var price) ||
                price <= 0)
            {
                await DisplayAlert("Ошибка", "Пожалуйста, заполните все поля корректно.", "OK");
                return;
            }

            try
            {
                if (_service == null) // Добавление новой услуги
                {
                    var newService = new Service
                    {
                        Title = ServiceTitleEntry.Text,
                        Description = ServiceDescriptionEditor.Text,
                        Price = price,
                        SpecialistId = Preferences.Get("UserId", 0),
                        SpecialistName = Preferences.Get("UserName", string.Empty),
                        City = Preferences.Get("UserCity", string.Empty)
                    };

                    await _userData.AddServiceAsync(newService);
                    await DisplayAlert("Успех", "Услуга успешно добавлена.", "OK");
                }
                else // Редактирование существующей услуги
                {
                    _service.Title = ServiceTitleEntry.Text;
                    _service.Description = ServiceDescriptionEditor.Text;
                    _service.Price = price;

                    await _userData.UpdateServiceAsync(_service);
                    await DisplayAlert("Успех", "Услуга успешно обновлена.", "OK");
                }

                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось сохранить услугу: {ex.Message}", "OK");
            }
        }
    }
}
