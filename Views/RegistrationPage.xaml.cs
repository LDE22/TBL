using System.Text.RegularExpressions; // Для регулярных выражений
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
            // Отключаем кнопку для предотвращения многократных нажатий
            NextButton.IsEnabled = false;

            try
            {
                string username = UsernameEntry.Text?.Trim();
                string email = EmailEntry.Text?.Trim();
                string password = PasswordEntry.Text?.Trim();

                // Проверка на пустые поля
                if (string.IsNullOrWhiteSpace(username) ||
                    string.IsNullOrWhiteSpace(email) ||
                    string.IsNullOrWhiteSpace(password))
                {
                    await DisplayAlert("Ошибка", "Все поля должны быть заполнены.", "OK");
                    return;
                }

                // Проверка на выбор роли
                if (string.IsNullOrWhiteSpace(_selectedRole))
                {
                    await DisplayAlert("Ошибка", "Необходимо выбрать роль пользователя.", "OK");
                    return;
                }

                // Проверка формата email
                if (!IsValidEmail(email))
                {
                    await DisplayAlert("Ошибка", "Некорректный формат Email.", "OK");
                    return;
                }

                // Проверка на корректный username
                if (!IsValidUsername(username))
                {
                    await DisplayAlert("Ошибка", "Имя пользователя должно содержать минимум 3 символа и состоять только из букв и цифр.", "OK");
                    return;
                }

                // Проверка пароля
                if (!IsValidPassword(password))
                {
                    await DisplayAlert("Ошибка", "Пароль должен содержать минимум 6 символов, включая хотя бы одну букву и одну цифру.", "OK");
                    return;
                }

                // Проверяем, существует ли пользователь
                var existingUsers = await _userData.GetUsersAsync();
                if (existingUsers.Any(u => u.Username == username || u.Email == email))
                {
                    await DisplayAlert("Ошибка", "Пользователь с таким логином или почтой уже существует.", "OK");
                    return;
                }

                // Создаём нового пользователя
                var newUser = new User
                {
                    Username = username,
                    Email = email,
                    Password = password,
                    Role = _selectedRole
                };

                await _userData.AddUserAsync(newUser);
                await DisplayAlert("Успех", "Пользователь зарегистрирован.", "OK");

                // Переход на страницу входа
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Что-то пошло не так: {ex.Message}", "OK");
            }
            finally
            {
                // Возвращаем кнопку в рабочее состояние
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

        // Проверка формата email
        private bool IsValidEmail(string email)
        {
            var emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, emailPattern);
        }

        // Проверка формата username
        private bool IsValidUsername(string username)
        {
            var usernamePattern = @"^[a-zA-Z0-9]{3,}$";
            return Regex.IsMatch(username, usernamePattern);
        }

        // Проверка формата пароля
        private bool IsValidPassword(string password)
        {
            var passwordPattern = @"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$";
            return Regex.IsMatch(password, passwordPattern);
        }
    }
}
