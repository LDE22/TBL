using Microsoft.Maui.Controls;
using TBL.Data;

namespace TBL.Views
{
    public partial class RepairPassPage : ContentPage
    {
        private bool _isStepTwo = false; // ������������ ����

        public RepairPassPage()
        {
            InitializeComponent();
        }

        private async void OnActionButtonClicked(object sender, EventArgs e)
        {
            if (!_isStepTwo)
            {
                // �������� ����� ��� ������
                string emailOrLogin = EmailEntry.Text?.Trim();
                if (string.IsNullOrWhiteSpace(emailOrLogin))
                {
                    await DisplayAlert("������", "������� ����� ��� �����.", "OK");
                    return;
                }

                var user = UserData.Users.FirstOrDefault(u => u.Login == emailOrLogin || u.Email == emailOrLogin); // ��������� ���������� Email � ������ User

                if (user == null)
                {
                    await DisplayAlert("������", "������������ � ����� ������� ��� ������ �� ������.", "OK");
                    return;
                }

                // ������������� �� ������ ���
                _isStepTwo = true;
                InstructionLabel.Text = "������� ����� ������";
                EmailEntry.IsVisible = false;
                NewPasswordEntry.IsVisible = true;
                ConfirmPasswordEntry.IsVisible = true;
                ActionButton.Text = "���������";
            }
            else
            {
                // ��������� ������ ������
                string newPassword = NewPasswordEntry.Text?.Trim();
                string confirmPassword = ConfirmPasswordEntry.Text?.Trim();

                if (string.IsNullOrWhiteSpace(newPassword) || newPassword != confirmPassword)
                {
                    await DisplayAlert("������", "������ �� ��������� ��� �� ���������.", "OK");
                    return;
                }

                // ��������� ������ (�������� �� ���������� ����� ����������)
                var user = UserData.Users.FirstOrDefault(u => u.Login == EmailEntry.Text || u.Email == EmailEntry.Text);
                if (user != null)
                {
                    user.Password = newPassword;
                    await DisplayAlert("�����", "������ ������� ������.", "OK");
                    await Navigation.PopAsync(); // ������������ �� ���������� ��������
                }
            }
        }
    }
}
