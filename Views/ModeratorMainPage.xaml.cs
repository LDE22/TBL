using Microsoft.Maui.Controls;
using TBL.Data;

namespace TBL.Views;

public partial class ModeratorMainPage : ContentPage
{
    public ModeratorMainPage()
    {
        InitializeComponent();

        // Установим BindingContext на ViewModel
        var moderator = UserData.Users.FirstOrDefault(u => u.Role == "Moderator");
        BindingContext = new ModeratorMainPageViewModel
        {
            UserPhoto = moderator?.Photo ?? "default_user_photo.png" // Установим фото из UserData
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
        public string UserPhoto { get; set; } // Для отображения фото модератора

        public List<Ticket> Tickets { get; set; }

        public ModeratorMainPageViewModel()
        {
            // Пример данных для отображения тикетов
            Tickets = new List<Ticket>
            {
                new Ticket { Title = "Ticket #666", Description = "Алина. Маникюр", UserPhoto = "user1.png" },
                new Ticket { Title = "Ticket #667", Description = "Имя заявителя. Название услуги", UserPhoto = "user2.png" }
            };
        }
    }
}
