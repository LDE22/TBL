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
                await DisplayAlert("Ошибка", "Все поля должны быть заполнены.", "OK");
                return;
            }

            if (NewPasswordEntry.Text != ConfirmPasswordEntry.Text)
            {
                await DisplayAlert("Ошибка", "Пароли не совпадают.", "OK");
                return;
            }
            // Проверка пароля
            if (!IsValidPassword(NewPasswordEntry.Text))
            {
                await DisplayAlert("Ошибка", "Пароль должен содержать минимум 6 символов, включая хотя бы одну букву и одну цифру.", "OK");
                return;
            }

            // Отправляем запрос на сервер для обновления пароля
            var userData = new UserData(new HttpClient());
            try
            {
                await userData.ResetPasswordAsync(_token, NewPasswordEntry.Text);
                await DisplayAlert("Успех", "Пароль успешно обновлён.", "OK");
                await Navigation.PushAsync(new MainPage(userData)); // Передаём userData в MainPage
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось обновить пароль: {ex.Message}", "OK");
            }
        }
    // Проверка формата пароля
        private bool IsValidPassword(string password)
        {
            var passwordPattern = @"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$";
            return Regex.IsMatch(password, passwordPattern);
        }
    }
}