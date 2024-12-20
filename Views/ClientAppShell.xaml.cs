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

            // �������� UserData �� DI
            _userData = userData;
        }
        private void OnLogoutClicked(object sender, EventArgs e)
        {
            // ������� ���������� ������
            Preferences.Remove("UserRole");

            // ������� �� �������� �����
            Application.Current.MainPage = new NavigationPage(new MainPage(_userData));
        }
    }
}
