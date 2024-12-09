namespace TBL.Views
{
    public partial class SpecialistAppShell : Shell
    {
        public SpecialistAppShell()
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

