using Microsoft.Maui.Controls;
using TBL.Data;

namespace TBL.Views;

public partial class ModeratorMainPage : ContentPage
{
    public ModeratorMainPage()
    {
        InitializeComponent();

        // ��������� BindingContext �� ViewModel
        var moderator = UserData.Users.FirstOrDefault(u => u.Role == "Moderator");
        BindingContext = new ModeratorMainPageViewModel
        {
            UserPhoto = moderator?.Photo ?? "default_user_photo.png" // ��������� ���� �� UserData
        };
    }

    public class Ticket
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string UserPhoto { get; set; }
    }

    public class ModeratorMainPageViewModel
    {
        public string UserPhoto { get; set; } // ��� ����������� ���� ����������

        public List<Ticket> Tickets { get; set; }

        public ModeratorMainPageViewModel()
        {
            // ������ ������ ��� ����������� �������
            Tickets = new List<Ticket>
            {
                new Ticket { Title = "Ticket #666", Description = "�����. �������", UserPhoto = "user1.png" },
                new Ticket { Title = "Ticket #667", Description = "��� ���������. �������� ������", UserPhoto = "user2.png" }
            };
        }
    }
}
