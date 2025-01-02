using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace TBL.Models
{
    public class Booking
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; }

        [NotMapped]
        [JsonConverter(typeof(DateOnlyJsonConverter))]
        public DateOnly Day
        {
            get => DateOnly.FromDateTime(DayInternal);
            set => DayInternal = value.ToDateTime(TimeOnly.MinValue);
        }

        [Required]
        public DateTime DayInternal { get; set; } // Поле для хранения даты в базе данных
        public string TimeInterval { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ClientName { get; set; }  // Имя клиента
        public string ClientPhoto { get; set; }
        // Связь с услугой
        public virtual Service Service { get; set; }
    }
    public class Meeting
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; }
        public DateOnly Day { get; set; } // Дата встречи
        public string TimeInterval { get; set; } // Временной интервал
        public string Title { get; set; } // Название услуги
        public string Description { get; set; } // Описание услуги
        public string SpecialistName { get; set; } // Имя специалиста
        public string SpecialistPhoto { get; set; } // Фото специалиста
    }
}
