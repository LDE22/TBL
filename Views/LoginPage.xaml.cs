using TBL.Services;

namespace TBL.Views;

public partial class LoginPage : ContentPage
{
    private readonly ApiService _apiService;

    public LoginPage(ApiService apiService)
    {
        InitializeComponent();
        _apiService = apiService;
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(LoginEntry.Text) || string.IsNullOrWhiteSpace(PasswordEntry.Text))
        {
            await DisplayAlert("������", "������� ����� � ������.", "OK");
            return;
        }

        var user = await _apiService.LoginAsync(LoginEntry.Text, PasswordEntry.Text);

        if (user != null)
        {
            await DisplayAlert("�����", "�� ����� � �������.", "OK");

            switch (user.Role)
            {
                case "Specialist":
                    Application.Current.MainPage = new SpecialistAppShell();
                    break;
                case "Client":
                    Application.Current.MainPage = new ClientAppShell();
                    break;
                case "Moderator":
                    Application.Current.MainPage = new ModeratorAppShell();
                    break;
                default:
                    await DisplayAlert("������", "����������� ����.", "OK");
                    break;
            }
        }
        else
        {
            await DisplayAlert("������", "�������� ����� ��� ������.", "OK");
        }
    }
    private async void OnForgotPasswordClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RepairPassPage());
    }
}
