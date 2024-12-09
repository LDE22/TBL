using Microsoft.Maui.Controls;
using TBL.Data;

namespace TBL.Views
{
    public partial class RepairPassPage : ContentPage
    {
        private bool _isStepTwo = false; // Контролируем шаги

        public RepairPassPage()
        {
            InitializeComponent();
        }

        private async void OnActionButtonClicked(object sender, EventArgs e)
        {
            if (!_isStepTwo)
            {
                // Проверка почты или логина
                string emailOrLogin = EmailEntry.Text?.Trim();
                if (string.IsNullOrWhiteSpace(emailOrLogin))
                {
                    await DisplayAlert("Ошибка", "Введите почту или логин.", "OK");
                    return;
                }

                var user = UserData.Users.FirstOrDefault(u => u.Login == emailOrLogin || u.Email == emailOrLogin); // Проверьте добавление Email в модель User

                if (user == null)
                {
                    await DisplayAlert("Ошибка", "Пользователь с таким логином или почтой не найден.", "OK");
                    return;
                }

                // Переключаемся на второй шаг
                _isStepTwo = true;
                InstructionLabel.Text = "Введите новый пароль";
                EmailEntry.IsVisible = false;
                NewPasswordEntry.IsVisible = true;
                ConfirmPasswordEntry.IsVisible = true;
                ActionButton.Text = "Сохранить";
            }
            else
            {
                // Обработка нового пароля
                string newPassword = NewPasswordEntry.Text?.Trim();
                string confirmPassword = ConfirmPasswordEntry.Text?.Trim();

                if (string.IsNullOrWhiteSpace(newPassword) || newPassword != confirmPassword)
                {
                    await DisplayAlert("Ошибка", "Пароли не совпадают или не заполнены.", "OK");
                    return;
                }

                // Обновляем пароль (заменяем на подходящий метод сохранения)
                var user = UserData.Users.FirstOrDefault(u => u.Login == EmailEntry.Text || u.Email == EmailEntry.Text);
                if (user != null)
                {
                    user.Password = newPassword;
                    await DisplayAlert("Успех", "Пароль успешно изменён.", "OK");
                    await Navigation.PopAsync(); // Возвращаемся на предыдущую страницу
                }
            }
        }
    }
}
