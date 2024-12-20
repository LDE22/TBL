using TBL.Data;
using TBL.Models;

namespace TBL.Views;

public partial class RepairPassPage : ContentPage
{
    private readonly UserData _userData;
    private bool _isStepTwo = false;
    private User _currentUser;

    public RepairPassPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
    }

    private async void OnActionButtonClicked(object sender, EventArgs e)
    {
        var email = EmailEntry.Text;

        if (string.IsNullOrWhiteSpace(email))
        {
            await DisplayAlert("������", "������� email.", "OK");
            return;
        }

        try
        {
            await _userData.SendPasswordResetRequestAsync(email);
            await DisplayAlert("�����", "�� ���� ����� ���������� ���������� �� �������������� ������.", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
        }
    }
}
