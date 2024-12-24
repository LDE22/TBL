using Microsoft.Extensions.DependencyInjection;
using TBL.Views;
using TBL.Data;
using TBL.Models;
using TBL.Converters;
using Microsoft.Maui.Controls.PlatformConfiguration;
using System.Diagnostics;
using Microsoft.Maui;
using Microsoft.Maui.Storage; // ��� Preferences
using Microsoft.Maui.Devices; // ��� ���������� � ���������


namespace TBL;

public partial class App : Application
{
    private readonly UserData _userData;

    public App(UserData userData) // �������� UserData ����� DI
    {
        InitializeComponent();
        _userData = new UserData(new HttpClient());
        CheckUserRoleAndNavigate();
    }

    private void CheckUserRoleAndNavigate()
    {
        var userRole = Preferences.Get("UserRole", string.Empty);

        if (string.IsNullOrEmpty(userRole))
        {
            MainPage = new NavigationPage(new MainPage(_userData)); // ������� UserData
        }
        else
        {
            switch (userRole)
            {
                case "Specialist":
                    MainPage = new SpecialistAppShell(_userData);
                    break;
                case "Client":
                    MainPage = new ClientAppShell(_userData);
                    break;
                case "Moderator":
                    MainPage = new ModeratorAppShell(_userData);
                    break;
                default:
                    MainPage = new NavigationPage(new MainPage(_userData));
                    break;
            }
        }
    }
}
