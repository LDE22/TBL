using TBL.Data;
using TBL.Views;
using Microsoft.EntityFrameworkCore;

namespace TBL;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        // Инициализация базы данных
        using (var db = new AppDbContext())
        {
            db.Database.EnsureCreated();
            if (db.Database.GetPendingMigrations().Any())
            {
                db.Database.Migrate();
            }
        }
    }

    protected override Window CreateWindow(IActivationState activationState)
    {
        return new Window(new NavigationPage(new MainPage()));
    }


    public void NavigateToRoleBasedPage(string role)
    {
        // Переход на страницу в зависимости от роли
        switch (role)
        {
            case "Client":
                Current.MainPage = new ClientAppShell();
                break;
            case "Specialist":
                Current.MainPage = new SpecialistAppShell();
                break;
            case "Moderator":
                Current.MainPage = new ModeratorAppShell();
                break;
            default:
                Current.MainPage = new NavigationPage(new MainPage());
                break;
        }
    }
}
