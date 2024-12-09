namespace TBL.Views
{
    public partial class ClientAppShell : Shell
    {
        public ClientAppShell()
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