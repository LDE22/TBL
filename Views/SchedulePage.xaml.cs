using System.Collections.ObjectModel;
using TBL.Data;
using TBL.Models;

namespace TBL.Views
{
    public partial class EditSchedulePage : ContentPage
    {
        private readonly UserData _userData;
        private readonly int _specialistId;

        public ObservableCollection<Schedule> ScheduleList { get; set; }

        public EditSchedulePage(UserData userData)
        {
            InitializeComponent();
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));
            _specialistId = Preferences.Get("UserId", 0);

            ScheduleList = new ObservableCollection<Schedule>();
            BindingContext = this;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadSchedulesAsync();
        }

        private async Task LoadSchedulesAsync()
        {
            try
            {
                var schedules = await _userData.GetSchedulesAsync(_specialistId);
                ScheduleList.Clear();
                foreach (var schedule in schedules)
                {
                    ScheduleList.Add(schedule);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить расписание: {ex.Message}", "OK");
            }
        }

        private async void OnAddScheduleClicked(object sender, EventArgs e)
        {
            var newSchedule = new Schedule
            {
                SpecialistId = _specialistId,
                Day = DateTime.UtcNow.Date,
                StartTime = new TimeSpan(9, 0, 0),
                EndTime = new TimeSpan(17, 0, 0),
                BreakDuration = 60
            };

            try
            {
                await _userData.AddScheduleAsync(newSchedule);
                ScheduleList.Add(newSchedule);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось добавить расписание: {ex.Message}", "OK");
            }
        }

        private async void OnDeleteClicked(object sender, EventArgs e)
        {
            if (sender is Button button && button.CommandParameter is Schedule schedule)
            {
                var confirm = await DisplayAlert("Подтверждение", "Вы уверены, что хотите удалить расписание?", "Да", "Нет");
                if (!confirm) return;

                try
                {
                    await _userData.DeleteScheduleAsync(schedule.Id);
                    ScheduleList.Remove(schedule);
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Не удалось удалить расписание: {ex.Message}", "OK");
                }
            }
        }

        private async void OnSaveScheduleClicked(object sender, EventArgs e)
        {
            foreach (var schedule in ScheduleList)
            {
                try
                {
                    await _userData.UpdateScheduleAsync(schedule);
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Ошибка сохранения: {ex.Message}", "OK");
                }
            }

            await DisplayAlert("Успех", "Расписание сохранено!", "OK");
        }
    }
}
