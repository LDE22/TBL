using System.Collections.ObjectModel;
using System.Diagnostics;
using TBL.Data;
using TBL.Models;
using System.Windows.Input;

namespace TBL.Views
{
    public partial class ServicesPage : ContentPage
    {
        private readonly UserData _userData;
        public ObservableCollection<Service> Services { get; set; } = new ObservableCollection<Service>();

        public ICommand EditServiceCommand { get; }
        public ICommand DeleteServiceCommand { get; }

        public ServicesPage(UserData userData)
        {
            InitializeComponent();
            if (userData == null) throw new ArgumentNullException(nameof(userData));
            _userData = userData;
            EditServiceCommand = new Command<Service>(async service => await EditService(service));
            DeleteServiceCommand = new Command<Service>(async service => await DeleteService(service));

            BindingContext = this;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;

                await LoadServicesAsync();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Ошибка при загрузке: {ex.Message}", "ОК");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
            }
        }

        private async Task LoadServicesAsync()
        {
            try
            {
                // Получаем услуги для текущего пользователя
                var services = await _userData.GetServicesBySpecialistAsync(Preferences.Get("UserId", 0));

                // Если услуг нет, показываем сообщение
                if (services == null || !services.Any())
                {
                    EmptyServicesLabel.IsVisible = true;
                    ServicesCollectionView.IsVisible = false;
                    Services.Clear();
                    return;
                }

                // Скрываем сообщение и обновляем список услуг
                EmptyServicesLabel.IsVisible = false;
                ServicesCollectionView.IsVisible = true;
                Services.Clear();
                foreach (var service in services)
                {
                    Services.Add(service);
                }
            }
            catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
            {
                // Обработка случая, если услуг нет
                EmptyServicesLabel.IsVisible = true;
                ServicesCollectionView.IsVisible = false;
                Services.Clear();
            }
            catch (Exception ex)
            {
                // Общая обработка ошибок
                await DisplayAlert("Ошибка", $"Ошибка при загрузке услуг: {ex.Message}", "ОК");
            }
        }


        private async Task EditService(Service service)
        {
            if (service == null) return;

            await Navigation.PushAsync(new EditAddServicePage(_userData, service));
        }

        private async void OnAddServiceClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new EditAddServicePage(_userData));
        }


        private async Task DeleteService(Service service)
        {
            if (service == null) return;

            var confirm = await DisplayAlert("Подтверждение", $"Вы уверены, что хотите удалить услугу \"{service.Title}\"?", "Да", "Нет");
            if (!confirm) return;

            try
            {
                await _userData.DeleteServiceAsync(service.Id);
                Services.Remove(service);
                await DisplayAlert("Успех", "Услуга успешно удалена.", "ОК");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось удалить услугу: {ex.Message}", "ОК");
            }
        }
    }
}

