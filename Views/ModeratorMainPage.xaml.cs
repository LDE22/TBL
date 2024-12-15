using Microsoft.Maui.Controls;
using TBL.Data;

namespace TBL.Views;

public partial class ModeratorMainPage : ContentPage
{
    public ModeratorMainPage()
    {
        InitializeComponent();

        // Пример данных для отображения
        BindingContext = new ModeratorMainPageViewModel
        {
            Tickets = new List<Ticket>
            {
                new Ticket { Title = "Жалоба #1", Description = "Описание жалобы 1" },
                new Ticket { Title = "Жалоба #2", Description = "Описание жалобы 2" }
            }
        };
    }
}

public class Ticket
{
    public string Title { get; set; }
    public string Description { get; set; }
}

public class ModeratorMainPageViewModel
{
    public List<Ticket> Tickets { get; set; }
}
