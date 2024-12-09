using TBL.Data;

namespace TBL.Views
{
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            LoginButton.Clicked += OnLoginButtonClicked;
        }

        private async void OnForgotPasswordClicked(object sender, EventArgs e)
        {
            // Переход на страницу восстановления пароля
            await Navigation.PushAsync(new RepairPassPage());
        }

        private async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(LoginEntry.Text) || string.IsNullOrWhiteSpace(PasswordEntry.Text))
            {
                await DisplayAlert("Ошибка", "Введите логин и пароль.", "OK");
                return;
            }

            // Проверяем данные пользователя
            var user = UserData.Users.FirstOrDefault(u => u.Login == LoginEntry.Text && u.Password == PasswordEntry.Text);
            if (user == null)
            {
                await DisplayAlert("Ошибка", "Неверный логин или пароль.", "OK");
                return;
            }

            // Сохраняем роль пользователя
            Preferences.Set("UserRole", user.Role);

            // Перенаправляем на соответствующий Shell
            switch (user.Role)
            {
                case "Specialist":
                    Application.Current.MainPage = new SpecialistAppShell();
                    break;
                case "Client":
                    Application.Current.MainPage = new ClientAppShell();
                    break;
                case "Moderator":
                    Application.Current.MainPage = new ModeratorAppShell();
                    break;
            }
        }

    }
}
