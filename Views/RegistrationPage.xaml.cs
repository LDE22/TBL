using Newtonsoft.Json;
using System.Net.Http.Headers;
using TBL.Models;

namespace TBL.Views;

public partial class RegistrationPage : ContentPage
{
    private string _selectedRole;
    private readonly HttpClient _httpClient;

    public RegistrationPage()
    {
        InitializeComponent();
        // ������������� HttpClient
        _httpClient = new HttpClient
        {
            BaseAddress = new Uri("https://tblapi-production.up.railway.app/")
        };
        _httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
    }

    private async void OnNextButtonClicked(object sender, EventArgs e)
    {
        // �������� �� ����������
        if (string.IsNullOrWhiteSpace(UsernameEntry.Text) ||
            string.IsNullOrWhiteSpace(PasswordEntry.Text) ||
            string.IsNullOrWhiteSpace(EmailEntry.Text) || _selectedRole == null)
        {
            await DisplayAlert("������", "��������� ��� ����!", "OK");
            return;
        }

        if (PasswordEntry.Text != ConfirmPasswordEntry.Text)
        {
            await DisplayAlert("������", "������ �� ���������!", "OK");
            return;
        }

        // �������� ������������
        var newUser = new User
        {
            Username = UsernameEntry.Text,
            Password = PasswordEntry.Text,
            Email = EmailEntry.Text,
            Role = _selectedRole
        };

        try
        {
            var json = JsonConvert.SerializeObject(newUser);
            var content = new StringContent(json, System.Text.Encoding.UTF8, "application/json");

            var response = await _httpClient.PostAsync("api/users/register", content);

            if (response.IsSuccessStatusCode)
            {
                await DisplayAlert("�����", "������������ ���������������!", "OK");
                await Navigation.PopAsync();
            }
            else
            {
                var error = await response.Content.ReadAsStringAsync();
                await DisplayAlert("������", error, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ������������: {ex.Message}", "OK");
        }
    }

    private void OnRoleSelected(object sender, CheckedChangedEventArgs e)
    {
        if (e.Value)
        {
            var radioButton = sender as RadioButton;
            _selectedRole = radioButton?.Value?.ToString();
        }
    }
}
