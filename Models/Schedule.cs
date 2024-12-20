using System.Text.Json;
using System.ComponentModel.DataAnnotations.Schema;

namespace TBL.Models
{
    public class Schedule
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; }
        public string Day { get; set; } // Например, "Понедельник"
        public string WorkingHours { get; set; } // Например, "10:00 - 19:00"

        // Список интервалов бронирования, сохраненный в базе как JSON
        public string BookedIntervals { get; set; }

        [NotMapped]
        public List<string> BookedIntervalsList
        {
            get => string.IsNullOrEmpty(BookedIntervals)
                ? new List<string>()
                : JsonSerializer.Deserialize<List<string>>(BookedIntervals);
            set => BookedIntervals = JsonSerializer.Serialize(value);
        }
    }
}
