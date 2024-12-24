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

            if (_service != null) // ����� ��������������
            {
                ServiceTitleEntry.Text = _service.Title;
                ServiceDescriptionEditor.Text = _service.Description;
                ServicePriceEntry.Text = _service.Price.ToString();
                SaveButton.Text = "��������";
            }
            else // ����� ����������
            {
                ServiceTitleEntry.Text = string.Empty;
                ServiceDescriptionEditor.Text = string.Empty;
                ServicePriceEntry.Text = string.Empty;
                SaveButton.Text = "�������";
            }
        }

        private async void OnSaveButtonClicked(object sender, EventArgs e)
        {
            // �������� ������������ ��������� ������
            if (string.IsNullOrWhiteSpace(ServiceTitleEntry.Text) ||
                string.IsNullOrWhiteSpace(ServicePriceEntry.Text) ||
                !decimal.TryParse(ServicePriceEntry.Text, out var price) ||
                price <= 0)
            {
                await DisplayAlert("������", "����������, ��������� ��� ���� ���������.", "OK");
                return;
            }

            try
            {
                if (_service == null) // ���������� ����� ������
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
                    await DisplayAlert("�����", "������ ������� ���������.", "OK");
                }
                else // �������������� ������������ ������
                {
                    _service.Title = ServiceTitleEntry.Text;
                    _service.Description = ServiceDescriptionEditor.Text;
                    _service.Price = price;

                    await _userData.UpdateServiceAsync(_service);
                    await DisplayAlert("�����", "������ ������� ���������.", "OK");
                }

                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
            }
        }
    }
}
