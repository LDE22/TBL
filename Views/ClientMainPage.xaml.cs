using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using TBL.Data; // ���������� ������������ ��� ��� UserData
using TBL.Models;

namespace TBL.Views;

public partial class ClientMainPage : ContentPage
{
    public ClientMainPage()
    {
        InitializeComponent();

        // �������� �������� ������������
        BindingContext = UserData.Users.FirstOrDefault(u => u.Role == "Client");


        // ��������� ����������� �� ������
        if (BindingContext is User user)
        {
            ProfileImage.Source = user.Photo;
        }

    }
}
