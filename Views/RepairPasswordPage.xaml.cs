using System.Text.RegularExpressions;
using TBL.Data;
using TBL.Models;

namespace TBL.Views;

public partial class RepairPassPage : ContentPage
{
    private readonly UserData _userData;

    public RepairPassPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
    }

    private bool IsValidEmail(string email)
    {
        return Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$");
    }

    private async void OnActionButtonClicked(object sender, EventArgs e)
    {
        var email = EmailEntry.Text;

        if (string.IsNullOrWhiteSpace(email))
        {
            await DisplayAlert("������", "������� email.", "OK");
            return;
        }

        if (!IsValidEmail(email))
        {
            await DisplayAlert("������", "������� ���������� email.", "OK");
            return;
        }

        try
        {
            ActionButton.IsEnabled = false;
            await _userData.SendPasswordResetRequestAsync(email);
            await DisplayAlert("�����", "������ ��� ������ ������ ���������� �� ���� �����.", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", ex.Message, "OK");
        }
        finally
        {
            ActionButton.IsEnabled = true;
        }
    }
}
