using Microsoft.Maui.Controls;
using TBL.Views;

namespace TBL;

public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();

        // ����������� �������� � �������
        RegistrationButton.Clicked += OnRegistrationButtonClicked;
        LoginButton.Clicked += OnLoginButtonClicked;
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        // �������� ��������� LoginPage �� ���������� DI
        var loginPage = App.Current.Handler.MauiContext.Services.GetRequiredService<LoginPage>();
        await Navigation.PushAsync(loginPage);
    }


    private async void OnRegistrationButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RegistrationPage());
    }
}
