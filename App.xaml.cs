using TBL.Views;

namespace TBL;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        // ������ MainPage � NavigationPage
        MainPage = new NavigationPage(new MainPage());
    }

public void NavigateToRoleBasedPage(string role)
    {
        // ������������ �� ��������, ���������� �� ���� ������������
        switch (role)
        {
            case "Client":
                MainPage = new ClientAppShell(); // Shell ��� �������
                break;
            case "Specialist":
                MainPage = new SpecialistAppShell(); // Shell ��� �����������
                break;
            case "Moderator":
                MainPage = new ModeratorAppShell(); // Shell ��� ����������
                break;
            default:
                MainPage = new NavigationPage(new MainPage());
                break;
        }
    }
}

