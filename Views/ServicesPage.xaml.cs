using Microsoft.Maui.Controls;
using System.Collections.ObjectModel;

namespace TBL.Views;

public partial class ServicesPage : ContentPage
{
    public ObservableCollection<Service> Services { get; set; }

    public ServicesPage()
    {
        InitializeComponent();

        // ������ ������ ��� ������ �����
        Services = new ObservableCollection<Service>
        {
            new Service { Name = "�������", Price = "2000 �." },
            new Service { Name = "�����", Price = "1500 �." }
        };

        BindingContext = this;
    }

    // ���������� ��� ������ ���������� ������
    private async void OnAddServiceClicked(object sender, EventArgs e)
    {
        // ������ ���������� ����� ������
        await DisplayAlert("���������� ������", "������� ����� ��� ���������� ����� ������", "OK");
    }
}

public class Service
{
    public string Name { get; set; }
    public string Price { get; set; }
}
