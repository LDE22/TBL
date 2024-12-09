using TBL.Data; // Подключаем пространство имён для UserData
namespace TBL.Views;

public partial class ClientProfilePage : ContentPage
{
    public ClientProfilePage()
    {
        InitializeComponent();
        BindingContext = UserData.Users.FirstOrDefault(u => u.Role == "Client");
    }

    private async void OnChangePhotoClicked(object sender, EventArgs e)
    {
        try
        {
            // Открываем галерею для выбора изображения
            var result = await FilePicker.PickAsync(new PickOptions
            {
                PickerTitle = "Выберите изображение",
                FileTypes = FilePickerFileType.Images
            });

            if (result != null)
            {
                // Устанавливаем выбранное изображение
                ProfileImage.Source = ImageSource.FromFile(result.FullPath);

                // Сохраняем путь к изображению в текущего пользователя
                var user = BindingContext as User;
                if (user != null)
                {
                    user.Photo = result.FullPath;
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить фото: {ex.Message}", "OK");
        }
    }

    private async void OnDeleteAccountClicked(object sender, EventArgs e)
    {
        bool confirm = await DisplayAlert("Удаление аккаунта", "Вы уверены, что хотите удалить аккаунт?", "Да", "Нет");
        if (confirm)
        {
            // Здесь можно добавить логику удаления аккаунта
            await DisplayAlert("Удалено", "Ваш аккаунт был удален.", "OK");
            await Navigation.PopToRootAsync();
        }
    }
}
