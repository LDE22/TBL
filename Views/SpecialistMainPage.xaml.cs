using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using TBL.Data;
using TBL.Models;

namespace TBL.Views
{

    public partial class SpecialistMainPage : ContentPage
    {
        public List<Order> Orders { get; set; }
        public SpecialistMainPage()
        {
            InitializeComponent();
            var specialist = UserData.Users.FirstOrDefault(u => u.Role == "Specialist");
            if (specialist == null)
            {
                DisplayAlert("������", "���������� �� ������.", "OK");
                return;
            }

            Orders = new List<Order>
            {
                new Order { ClientName = "�����", Date = DateTime.Today, Time = "19:00", ServiceType = "�������", Photo = "user1.png" },
                new Order { ClientName = "�����", Date = DateTime.Today, Time = "21:00", ServiceType = "�������", Photo = "user2.png" }
            };

            BindingContext = new SpecialistMainPageViewModel(specialist, Orders);
        }
    }
    public class SpecialistMainPageViewModel
    {
        public User Specialist { get; set; }
        public List<Order> Orders { get; set; }

        public SpecialistMainPageViewModel(User specialist, List<Order> orders)
        {
            Specialist = specialist;
            Orders = orders;
        }
    }

}