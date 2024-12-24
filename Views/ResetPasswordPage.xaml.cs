using System.Text.RegularExpressions;
using TBL.Data;

namespace TBL.Views
{
    public partial class ResetPasswordPage : ContentPage
    {
        private readonly string _token;

        public ResetPasswordPage(string token)
        {
            InitializeComponent();
            _token = token;
        }

        private async void OnResetPasswordClicked(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(NewPasswordEntry.Text) ||
                string.IsNullOrWhiteSpace(ConfirmPasswordEntry.Text))
            {
                await DisplayAlert("������", "��� ���� ������ ���� ���������.", "OK");
                return;
            }

            if (NewPasswordEntry.Text != ConfirmPasswordEntry.Text)
            {
                await DisplayAlert("������", "������ �� ���������.", "OK");
                return;
            }
            // �������� ������
            if (!IsValidPassword(NewPasswordEntry.Text))
            {
                await DisplayAlert("������", "������ ������ ��������� ������� 6 ��������, ������� ���� �� ���� ����� � ���� �����.", "OK");
                return;
            }

            // ���������� ������ �� ������ ��� ���������� ������
            var userData = new UserData(new HttpClient());
            try
            {
                await userData.ResetPasswordAsync(_token, NewPasswordEntry.Text);
                await DisplayAlert("�����", "������ ������� �������.", "OK");
                await Navigation.PushAsync(new MainPage(userData)); // ������� userData � MainPage
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"�� ������� �������� ������: {ex.Message}", "OK");
            }
        }
    // �������� ������� ������
        private bool IsValidPassword(string password)
        {
            var passwordPattern = @"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$";
            return Regex.IsMatch(password, passwordPattern);
        }
    }
}