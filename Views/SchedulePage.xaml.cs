using System; // �������� ����������
using System.Collections.ObjectModel; // ��� ObservableCollection
using Microsoft.Maui.Controls; // ��� MAUI
using TBL.Data; // ��� UserData
using TBL.Models; // ��� ������� Booking � Schedule


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
            await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
        }
    }

    private async void OnSaveScheduleClicked(object sender, EventArgs e)
    {
        try
        {
            foreach (var schedule in Schedules)
                await _userData.UpdateScheduleAsync(schedule);

            await DisplayAlert("�����", "������ �������.", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� ���������: {ex.Message}", "OK");
        }
    }
}
