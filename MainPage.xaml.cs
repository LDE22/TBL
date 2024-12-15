using Microsoft.Maui.Controls;

namespace TBL;

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
        await Navigation.PushAsync(new LoginPage());
    }

    private async void OnRegistrationButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RegistrationPage());
    }
}
