using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class RegistrationPage : ContentPage
{
    private string _selectedRole;

    public RegistrationPage()
    {
        InitializeComponent();
        NextButton.Clicked += OnNextButtonClicked;
    }

    private void OnRoleSelected(object sender, CheckedChangedEventArgs e)
    {
        if (e.Value)
        {
            var radioButton = sender as RadioButton;
            _selectedRole = radioButton?.Value?.ToString();
        }
    }

    private async void OnNextButtonClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(EmailEntry.Text) ||
            string.IsNullOrWhiteSpace(LoginEntry.Text) ||
            string.IsNullOrWhiteSpace(PasswordEntry.Text) ||
            PasswordEntry.Text != ConfirmPasswordEntry.Text)
        {
            await DisplayAlert("������", "����������, ��������� ��� ���� � ���������, ��� ������ ���������.", "OK");
            return;
        }

        if (string.IsNullOrWhiteSpace(_selectedRole))
        {
            await DisplayAlert("������", "����������, �������� ���� (������ ��� ����������).", "OK");
            return;
        }

        // ������ �������� �����������
        await DisplayAlert("�����", $"�� ������������������ ��� {_selectedRole}!", "OK");
        await Navigation.PushAsync(new LoginPage());
    }
}
