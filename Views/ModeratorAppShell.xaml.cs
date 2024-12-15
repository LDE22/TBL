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
            if (Application.Current?.Windows?.Count > 0)
            {
                Application.Current.Windows[0].Page = new NavigationPage(new MainPage());
            }
            else
            {
                Console.WriteLine("Ошибка: Application.Current.Windows не содержит окон.");
            }
        }
    }
}
