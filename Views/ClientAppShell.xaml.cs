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
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));
        }
        private void OnLogoutClicked(object sender, EventArgs e)
        {
            // ������� ���� ���������� ������
            Preferences.Clear();

            // �������� ������ ���������� UserData
            var newUserData = new UserData(new HttpClient());

            // ������� �� �������� MainPage
            Application.Current.MainPage = new NavigationPage(new MainPage(newUserData));
        }
    }
}
