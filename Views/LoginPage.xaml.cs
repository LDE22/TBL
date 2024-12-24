using TBL.Data;
using System.Diagnostics;
using Microsoft.Maui.Storage;

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
                await DisplayAlert("Ошибка", "Введите логин и пароль.", "OK");
                return;
            }

            var user = await _userData.LoginAsync(username, password);

            if (user == null)
            {
                await DisplayAlert("Ошибка", "Неверный логин или пароль.", "OK");
                return;
            }
            if (!user.IsEmailConfirmed)
            {
                await DisplayAlert("Ошибка", "Аккаунт не подтвержден. Проверьте вашу почту.", "OK");
                return;
            }

            // Сохраняем Username и Role в Preferences
            Preferences.Set("Username", user.Username);
            Preferences.Set("UserRole", user.Role);
            Preferences.Set("UserId", user.Id);
            Preferences.Set("UserCity", user.City);
            // Переход на соответствующий AppShell
            switch (user.Role)
            {
                case "Client":
                    Application.Current.MainPage = new ClientAppShell(_userData);
                    break;

                case "Moderator":
                    Application.Current.MainPage = new ModeratorAppShell(_userData);
                    break;

                case "Specialist":
                    Application.Current.MainPage = new SpecialistAppShell(_userData);
                    break;

                default:
                    await DisplayAlert("Ошибка", "Неизвестная роль пользователя.", "OK");
                    Application.Current.MainPage = new LoginPage(_userData); // Возврат на страницу входа
                    break;
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось выполнить вход: {ex.Message}", "OK");
        }
    }

    private async void OnForgotPasswordClicked(object sender, EventArgs e)
    {
        // Логика перехода на страницу восстановления пароля
        await Navigation.PushAsync(new RepairPassPage(_userData));
    }

}
