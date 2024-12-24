using Microsoft.Maui.Storage;
using TBL.Data;

namespace TBL.Views
{
    public partial class ModeratorAppShell : Shell
    {
        private readonly UserData _userData;
        public ModeratorAppShell(UserData userData)
        {
            InitializeComponent();
            _userData = userData;

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
