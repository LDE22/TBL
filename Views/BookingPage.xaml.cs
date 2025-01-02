using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;
using Microsoft.Maui.Controls;
using TBL.Data;
using TBL.Models;

namespace TBL.Views
{
    public partial class BookingPage : ContentPage
    {
        private readonly Service _service;
        private readonly UserData _userData;

        public ObservableCollection<AvailableTimeSlot> AvailableTimes { get; set; } = new ObservableCollection<AvailableTimeSlot>();

        public ICommand ConfirmBookingCommand { get; }

        public BookingPage(Service service, UserData userData)
        {
            InitializeComponent();
            _userData = userData;
            _service = service;

            ConfirmBookingCommand = new Command<AvailableTimeSlot>(ConfirmBooking);

            Title = $"Бронирование: {_service.Title}";
            LoadAvailableTimes();

            BindingContext = this;
        }

        private async void LoadAvailableTimes()
        {
            try
            {
                var schedules = await _userData.GetSchedulesAsync(_service.SpecialistId);

                // Получаем существующие бронирования для специалиста
                var existingBookings = await _userData.GetSpecialistOrdersAsync(_service.SpecialistId);

                foreach (var schedule in schedules)
                {
                    var slots = GenerateAvailableTimeSlots(schedule, existingBookings);
                    foreach (var slot in slots)
                    {
                        AvailableTimes.Add(slot);
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить расписание: {ex.Message}", "OK");
            }
        }

        private async void ConfirmBooking(AvailableTimeSlot timeSlot)
        {
            if (timeSlot == null)
            {
                await DisplayAlert("Ошибка", "Выберите доступное время.", "OK");
                return;
            }

            try
            {
                // Формируем объект бронирования
                var booking = new Booking
                {
                    SpecialistId = _service.SpecialistId,
                    ClientId = Preferences.Get("UserId", 0),
                    ServiceId = _service.Id,
                    Day = DateOnly.FromDateTime(timeSlot.Day), // Преобразуем в DateOnly
                    TimeInterval = timeSlot.TimeRange
                };

                // Пытаемся выполнить бронирование
                await _userData.BookServiceAsync(booking);

                await DisplayAlert("Успех", "Вы успешно записались на услугу!", "OK");
                await Navigation.PopAsync();
            }
            catch (ArgumentException ex)
            {
                await DisplayAlert("Ошибка в данных", ex.Message, "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось выполнить бронирование: {ex.Message}", "OK");
            }
        }

        private ObservableCollection<AvailableTimeSlot> GenerateAvailableTimeSlots(Schedule schedule, IEnumerable<Booking> existingBookings)
        {
            var slots = new ObservableCollection<AvailableTimeSlot>();
            var startTime = schedule.StartTime;
            var endTime = schedule.EndTime;

            while (startTime + TimeSpan.FromMinutes(_service.Duration) <= endTime)
            {
                var nextTime = startTime + TimeSpan.FromMinutes(_service.Duration);

                // Проверяем, есть ли пересечение с уже существующими бронированиями
                var isBooked = existingBookings.Any(b =>
                    b.Day == DateOnly.FromDateTime(schedule.Day) &&
                    TimeRangeOverlaps(b.TimeInterval, $"{startTime:hh\\:mm}-{nextTime:hh\\:mm}"));

                if (!isBooked)
                {
                    slots.Add(new AvailableTimeSlot
                    {
                        Day = schedule.Day,
                        TimeRange = $"{startTime:hh\\:mm} - {nextTime:hh\\:mm}"
                    });
                }

                startTime = nextTime + TimeSpan.FromMinutes(schedule.BreakDuration);
            }

            return slots;
        }
        private bool TimeRangeOverlaps(string existingTimeRange, string newTimeRange)
        {
            var existingParts = existingTimeRange.Split('-');
            var newParts = newTimeRange.Split('-');

            if (existingParts.Length == 2 && newParts.Length == 2 &&
                TimeSpan.TryParse(existingParts[0].Trim(), out var existingStart) &&
                TimeSpan.TryParse(existingParts[1].Trim(), out var existingEnd) &&
                TimeSpan.TryParse(newParts[0].Trim(), out var newStart) &&
                TimeSpan.TryParse(newParts[1].Trim(), out var newEnd))
            {
                return newStart < existingEnd && newEnd > existingStart;
            }

            return false;
        }

        public class AvailableTimeSlot
        {
            public DateTime Day { get; set; }
            public string TimeRange { get; set; }
        }
    }
}