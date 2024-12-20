using TBL.Data;
using TBL.Views;

namespace TBL;

public partial class MainPage : ContentPage
{
    private readonly UserData _userData;

    public MainPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
    }

    private async void OnRegistrationButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RegistrationPage(_userData));
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LoginPage(_userData));
    }
}
