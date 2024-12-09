namespace TBL.Views
{
    public partial class ModeratorAppShell : Shell
    {
        public ModeratorAppShell()
        {
            InitializeComponent();
        }

        private void OnLogoutClicked(object sender, EventArgs e)
        {
            // Сбрасываем данные пользователя
            BindingContext = null;
            Preferences.Remove("UserRole");

            // Переход на страницу входа
            Application.Current.MainPage = new NavigationPage(new MainPage());
        }
    }
}
