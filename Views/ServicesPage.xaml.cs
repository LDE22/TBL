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
                await DisplayAlert("������", $"������ ��� ��������: {ex.Message}", "��");
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
                // �������� ������ ��� �������� ������������
                var services = await _userData.GetServicesBySpecialistAsync(Preferences.Get("UserId", 0));

                // ���� ����� ���, ���������� ���������
                if (services == null || !services.Any())
                {
                    EmptyServicesLabel.IsVisible = true;
                    ServicesCollectionView.IsVisible = false;
                    Services.Clear();
                    return;
                }

                // �������� ��������� � ��������� ������ �����
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
                // ��������� ������, ���� ����� ���
                EmptyServicesLabel.IsVisible = true;
                ServicesCollectionView.IsVisible = false;
                Services.Clear();
            }
            catch (Exception ex)
            {
                // ����� ��������� ������
                await DisplayAlert("������", $"������ ��� �������� �����: {ex.Message}", "��");
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

            var confirm = await DisplayAlert("�������������", $"�� �������, ��� ������ ������� ������ \"{service.Title}\"?", "��", "���");
            if (!confirm) return;

            try
            {
                await _userData.DeleteServiceAsync(service.Id);
                Services.Remove(service);
                await DisplayAlert("�����", "������ ������� �������.", "��");
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"�� ������� ������� ������: {ex.Message}", "��");
            }
        }
    }
}

