using TBL.Data;
using System.Diagnostics;

namespace TBL.Views;

public partial class LoginPage : ContentPage
{
    private readonly UserData _userData;

    public LoginPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        try
        {
            string username = LoginEntry.Text?.Trim();
            string password = PasswordEntry.Text?.Trim();

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                await DisplayAlert("������", "������� ����� � ������.", "OK");
                return;
            }

            var user = await _userData.LoginAsync(username, password);

            if (user == null)
            {
                await DisplayAlert("������", "�������� ����� ��� ������.", "OK");
                return;
            }
            if (!user.IsEmailConfirmed)
            {
                await DisplayAlert("������", "������� �� �����������. ��������� ���� �����.", "OK");
                return;
            }

            // ��������� Username � Role � Preferences
            Preferences.Set("Username", user.Username);
            Preferences.Set("UserRole", user.Role);
            Preferences.Set("UserId", user.Id);
            Preferences.Set("UserCity", user.City);
            // ������� �� ��������������� AppShell
            switch (user.Role)
            {
                case "Client":
                    Application.Current.MainPage = new ClientAppShell(_userData);
                    Debug.WriteLine("[INFO] ������� �� ClientAppShell");
                    break;

                case "Moderator":
                    Application.Current.MainPage = new ModeratorAppShell(_userData);
                    Debug.WriteLine("[INFO] ������� �� ModeratorAppShell");
                    break;

                case "Specialist":
                    Application.Current.MainPage = new SpecialistAppShell(_userData);
                    Debug.WriteLine("[INFO] ������� �� SpecialistAppShell");
                    break;

                default:
                    Debug.WriteLine("[ERROR] ����������� ���� ������������.");
                    await DisplayAlert("������", "����������� ���� ������������.", "OK");
                    Application.Current.MainPage = new LoginPage(_userData); // ������� �� �������� �����
                    break;
            }
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[ERROR] ������ �����: {ex.Message}");
            await DisplayAlert("������", $"�� ������� ��������� ����: {ex.Message}", "OK");
        }
    }

    private async void OnForgotPasswordClicked(object sender, EventArgs e)
    {
        // ������ �������� �� �������� �������������� ������
        await Navigation.PushAsync(new RepairPassPage(_userData));
    }

}
