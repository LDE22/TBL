using Microsoft.Maui.Controls;
using TBL.Data;

namespace TBL.Views;

public partial class ModeratorMainPage : ContentPage
{
    public ModeratorMainPage()
    {
        InitializeComponent();

        // ������ ������ ��� �����������
        BindingContext = new ModeratorMainPageViewModel
        {
            Tickets = new List<Ticket>
            {
                new Ticket { Title = "������ #1", Description = "�������� ������ 1" },
                new Ticket { Title = "������ #2", Description = "�������� ������ 2" }
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
