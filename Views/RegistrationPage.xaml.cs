using System.Text.RegularExpressions; // ��� ���������� ���������
using Microsoft.Maui.Controls;
using TBL.Models;
using TBL.Data;

namespace TBL.Views
{
    public partial class RegistrationPage : ContentPage
    {
        private readonly UserData _userData;
        private string _selectedRole;

        public RegistrationPage(UserData userData)
        {
            InitializeComponent();
            _userData = new UserData(new HttpClient { BaseAddress = new Uri("https://localhost:5000/api/") });
        }

        private async void OnNextButtonClicked(object sender, EventArgs e)
        {
            // ��������� ������ ��� �������������� ������������ �������
            NextButton.IsEnabled = false;

            try
            {
                string username = UsernameEntry.Text?.Trim();
                string email = EmailEntry.Text?.Trim();
                string password = PasswordEntry.Text?.Trim();

                // �������� �� ������ ����
                if (string.IsNullOrWhiteSpace(username) ||
                    string.IsNullOrWhiteSpace(email) ||
                    string.IsNullOrWhiteSpace(password))
                {
                    await DisplayAlert("������", "��� ���� ������ ���� ���������.", "OK");
                    return;
                }

                // �������� �� ����� ����
                if (string.IsNullOrWhiteSpace(_selectedRole))
                {
                    await DisplayAlert("������", "���������� ������� ���� ������������.", "OK");
                    return;
                }

                // �������� ������� email
                if (!IsValidEmail(email))
                {
                    await DisplayAlert("������", "������������ ������ Email.", "OK");
                    return;
                }

                // �������� �� ���������� username
                if (!IsValidUsername(username))
                {
                    await DisplayAlert("������", "��� ������������ ������ ��������� ������� 3 ������� � �������� ������ �� ���� � ����.", "OK");
                    return;
                }

                // �������� ������
                if (!IsValidPassword(password))
                {
                    await DisplayAlert("������", "������ ������ ��������� ������� 6 ��������, ������� ���� �� ���� ����� � ���� �����.", "OK");
                    return;
                }

                // ���������, ���������� �� ������������
                var existingUsers = await _userData.GetUsersAsync();
                if (existingUsers.Any(u => u.Username == username || u.Email == email))
                {
                    await DisplayAlert("������", "������������ � ����� ������� ��� ������ ��� ����������.", "OK");
                    return;
                }

                // ������ ������ ������������
                var newUser = new User
                {
                    Username = username,
                    Email = email,
                    Password = password,
                    Role = _selectedRole
                };

                await _userData.AddUserAsync(newUser);
                await DisplayAlert("�����", "������������ ���������������.", "OK");

                // ������� �� �������� �����
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"���-�� ����� �� ���: {ex.Message}", "OK");
            }
            finally
            {
                // ���������� ������ � ������� ���������
                NextButton.IsEnabled = true;
            }
        }

        private void OnRoleSelected(object sender, CheckedChangedEventArgs e)
        {
            if (e.Value)
            {
                var radioButton = sender as RadioButton;
                _selectedRole = radioButton?.Value?.ToString();
            }
        }

        // �������� ������� email
        private bool IsValidEmail(string email)
        {
            var emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, emailPattern);
        }

        // �������� ������� username
        private bool IsValidUsername(string username)
        {
            var usernamePattern = @"^[a-zA-Z0-9]{3,}$";
            return Regex.IsMatch(username, usernamePattern);
        }

        // �������� ������� ������
        private bool IsValidPassword(string password)
        {
            var passwordPattern = @"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$";
            return Regex.IsMatch(password, passwordPattern);
        }
    }
}
