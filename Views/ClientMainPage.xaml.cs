using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using TBL.Data; // Подключаем пространство имён для UserData
using TBL.Models;

namespace TBL.Views;

public partial class ClientMainPage : ContentPage
{
    public ClientMainPage()
    {
        InitializeComponent();

        // Привязка текущего пользователя
        BindingContext = UserData.Users.FirstOrDefault(u => u.Role == "Client");


        // Установка изображения из модели
        if (BindingContext is User user)
        {
            ProfileImage.Source = user.Photo;
        }

    }
}
