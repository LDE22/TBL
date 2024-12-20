using Microsoft.Extensions.DependencyInjection;
using TBL.Data;

namespace TBL.Views
{
    public partial class SpecialistAppShell : Shell
    {
        private readonly UserData _userData;

        public SpecialistAppShell(UserData userData)
        {
            InitializeComponent();
            BindingContext = userData;

            Routing.RegisterRoute("services", typeof(ServicesPage));
            Routing.RegisterRoute("editSchedule", typeof(EditSchedulePage));
        }

        private void OnLogoutClicked(object sender, EventArgs e)
        {
            Preferences.Remove("UserRole");
            Application.Current.MainPage = new NavigationPage(new MainPage(_userData));
        }
    }
}
