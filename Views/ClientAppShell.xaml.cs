using Microsoft.Extensions.DependencyInjection;
using TBL.Data;

namespace TBL.Views
{
    public partial class ClientAppShell : Shell
    {
        private readonly UserData _userData;

        public ClientAppShell(UserData userData)
        {
            InitializeComponent();

            // Получаем UserData из DI
            _userData = userData;
        }
        private void OnLogoutClicked(object sender, EventArgs e)
        {
            // Очистка сохранённых данных
            Preferences.Remove("UserRole");

            // Переход на страницу входа
            Application.Current.MainPage = new NavigationPage(new MainPage(_userData));
        }
    }
}
