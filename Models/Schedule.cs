using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json;

namespace TBL.Models
{
    public class Schedule
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; }
        public DateTime Day { get; set; }
        public TimeSpan StartTime { get; set; }
        public TimeSpan EndTime { get; set; }
        public int BreakDuration { get; set; }
        public string BookedIntervals { get; set; } = "[]";// Занятые интервалы в формате JSON
        [NotMapped]
        public string WorkingHours { get; set; } = "[]";

        [NotMapped]
        public List<(TimeSpan Start, TimeSpan End)> WorkingHoursList
        {
            get
            {
                if (string.IsNullOrEmpty(WorkingHours))
                    return new List<(TimeSpan, TimeSpan)>();

                try
                {
                    var intervals = JsonSerializer.Deserialize<List<string>>(WorkingHours);
                    return intervals.Select(ParseTimeInterval).ToList();
                }
                catch (JsonException ex)
                {
                    Console.WriteLine($"Ошибка десериализации WorkingHours: {ex.Message}");
                    return new List<(TimeSpan, TimeSpan)>();
                }
            }
            set
            {
                WorkingHours = JsonSerializer.Serialize(value.Select(i => $"{i.Start:hh\\:mm} - {i.End:hh\\:mm}"));
            }
        }
        private static (TimeSpan Start, TimeSpan End) ParseTimeInterval(string timeInterval)
        {
            var parts = timeInterval.Split('-');
            if (parts.Length == 2 &&
                TimeSpan.TryParse(parts[0].Trim(), out var start) &&
                TimeSpan.TryParse(parts[1].Trim(), out var end))
            {
                return (start, end);
            }

            throw new FormatException("TimeInterval имеет неверный формат. Ожидался формат 'HH:mm - HH:mm'.");
        }
    }
}
