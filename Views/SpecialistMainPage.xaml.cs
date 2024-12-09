using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using TBL.Data;

namespace TBL.Views
{

    public partial class SpecialistMainPage : ContentPage
    {
        public SpecialistMainPage()
        {
            InitializeComponent();
            BindingContext = UserData.Users.FirstOrDefault(u => u.Role == "Specialist");
            ClientsList.ItemsSource = new List<Client>
        {
            new Client { Name = "�����", Time = "19:00. �������", Photo = "client1.png" },
            new Client { Name = "�����", Time = "21:00. �������", Photo = "client2.png" }
        };
        }


    }

    public class Client
    {
        public string Name { get; set; }
        public string Time { get; set; }
        public string Photo { get; set; }
    }
}