using System; // �������� ����������
using System.Collections.ObjectModel; // ��� ObservableCollection
using Microsoft.Maui.Controls; // ��� MAUI
using TBL.Data; // ��� UserData
using TBL.Models; // ��� ������� Booking � Schedule

namespace TBL.Views;

public partial class BookingPage : ContentPage
{
    private readonly UserData _userData;
    private readonly User _currentUser;
    private readonly Service _service;

    public ObservableCollection<string> AvailableTimes { get; set; } = new ObservableCollection<string>();

    public BookingPage(UserData userData, User currentUser, Service service)
    {
        InitializeComponent();
        _userData = userData;
        _currentUser = currentUser;
        _service = service;
        BindingContext = this;

        LoadAvailableDaysAsync();
    }
    private async void LoadAvailableDaysAsync()
    {
        try
        {
            var schedules = await _userData.GetSchedulesAsync(_service.SpecialistId);
            foreach (var schedule in schedules)
            {
                DayPicker.Items.Add(schedule.Day);
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� ��������� ���: {ex.Message}", "OK");
        }
    }

    private async void OnTimeSlotSelected(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var selectedTime = button.Text;

        try
        {
            await _userData.BookServiceAsync(new Booking
            {
                ClientId = _currentUser.Id,
                SpecialistId = _service.SpecialistId,
                ServiceId = _service.Id,
                Day = DayPicker.SelectedItem.ToString(),
                TimeInterval = selectedTime
            });

            await DisplayAlert("�����", "�� ������� ���������� �� ������!", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ����������: {ex.Message}", "OK");
        }
    }
}
