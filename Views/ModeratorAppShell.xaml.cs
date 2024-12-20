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
            // Очистка сохранённых данных
            Preferences.Remove("UserRole");

            // Переход на страницу входа
            Application.Current.MainPage = new NavigationPage(new MainPage(_userData));
        }
    }
}
