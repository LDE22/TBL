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
            new Client { Name = "Света", Time = "19:00. Маникюр", Photo = "client1.png" },
            new Client { Name = "Света", Time = "21:00. Маникюр", Photo = "client2.png" }
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