using System; // Основные библиотеки
using System.Collections.ObjectModel; // Для ObservableCollection
using Microsoft.Maui.Controls; // Для MAUI
using TBL.Data; // Для UserData
using TBL.Models; // Для моделей Booking и Schedule


namespace TBL.Views;
public partial class EditSchedulePage : ContentPage
{
    private readonly UserData _userData;

    public ObservableCollection<Schedule> Schedules { get; set; } = new ObservableCollection<Schedule>();

    public EditSchedulePage()
    {
        InitializeComponent();
        _userData = new UserData(new HttpClient());
        BindingContext = this;
        LoadSchedulesAsync();
    }

    private async void LoadSchedulesAsync()
    {
        try
        {
            var schedules = await _userData.GetSchedulesAsync(Preferences.Get("UserId", 0));
            foreach (var schedule in schedules)
                Schedules.Add(schedule);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить график: {ex.Message}", "OK");
        }
    }

    private async void OnSaveScheduleClicked(object sender, EventArgs e)
    {
        try
        {
            foreach (var schedule in Schedules)
                await _userData.UpdateScheduleAsync(schedule);

            await DisplayAlert("Успех", "График обновлён.", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось сохранить изменения: {ex.Message}", "OK");
        }
    }
}
