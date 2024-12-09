using Microsoft.Maui.Controls;
using System.Collections.ObjectModel;

namespace TBL.Views;

public partial class ServicesPage : ContentPage
{
    public ObservableCollection<Service> Services { get; set; }

    public ServicesPage()
    {
        InitializeComponent();

        // Пример данных для списка услуг
        Services = new ObservableCollection<Service>
        {
            new Service { Name = "Маникюр", Price = "2000 р." },
            new Service { Name = "Брови", Price = "1500 р." }
        };

        BindingContext = this;
    }

    // Обработчик для кнопки добавления услуги
    private async void OnAddServiceClicked(object sender, EventArgs e)
    {
        // Логика добавления новой услуги
        await DisplayAlert("Добавление услуги", "Открыть форму для добавления новой услуги", "OK");
    }
}

public class Service
{
    public string Name { get; set; }
    public string Price { get; set; }
}
