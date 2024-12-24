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
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));
        }
        private void OnLogoutClicked(object sender, EventArgs e)
        {
            // Очистка всех сохранённых данных
            Preferences.Clear();

            // Создание нового экземпляра UserData
            var newUserData = new UserData(new HttpClient());

            // Переход на страницу MainPage
            Application.Current.MainPage = new NavigationPage(new MainPage(newUserData));
        }
    }
}
