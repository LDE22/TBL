using TBL.Views;

namespace TBL;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        // Обёртка MainPage в NavigationPage
        MainPage = new NavigationPage(new MainPage());
    }

public void NavigateToRoleBasedPage(string role)
    {
        // Переключение на страницу, основанную на роли пользователя
        switch (role)
        {
            case "Client":
                MainPage = new ClientAppShell(); // Shell для клиента
                break;
            case "Specialist":
                MainPage = new SpecialistAppShell(); // Shell для специалиста
                break;
            case "Moderator":
                MainPage = new ModeratorAppShell(); // Shell для модератора
                break;
            default:
                MainPage = new NavigationPage(new MainPage());
                break;
        }
    }
}

