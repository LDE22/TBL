using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();

        // Привязываем действия к кнопкам
        RegistrationButton.Clicked += OnRegistrationButtonClicked;
        LoginButton.Clicked += OnLoginButtonClicked;
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        // Переход на страницу входа
        await Navigation.PushAsync(new LoginPage());
    }

    private async void OnRegistrationButtonClicked(object sender, EventArgs e)
    {
        // Переход на страницу регистрации
        await Navigation.PushAsync(new RegistrationPage());
    }

}
