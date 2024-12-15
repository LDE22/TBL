using TBL.Data;
using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class LoginPage : ContentPage
{
    public LoginPage()
    {
        InitializeComponent();
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(LoginEntry.Text) || string.IsNullOrWhiteSpace(PasswordEntry.Text))
        {
            await DisplayAlert("������", "������� ����� � ������.", "OK");
            return;
        }
        using (var db = new AppDbContext())
        {
            var user = db.Users.FirstOrDefault(u => u.Username == LoginEntry.Text && u.Password == PasswordEntry.Text);
            if (user == null)
            {
                await DisplayAlert("������", "�������� ����� ��� ������.", "OK");
                return;
            }

            // ��������� ���� ������������
            Preferences.Set("UserRole", user.Role);

            // ������� � ����������� �� ����
            (Application.Current as App)?.NavigateToRoleBasedPage(user.Role);
        }
    }

    private async void OnForgotPasswordClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RepairPassPage());
    }
}
