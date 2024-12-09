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
            // ���������� ������ ������������
            BindingContext = null;
            Preferences.Remove("UserRole");

            // ������� �� �������� �����
            Application.Current.MainPage = new NavigationPage(new MainPage());
        }
    }
}
