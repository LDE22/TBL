namespace TBL.Models
{
    public class Booking
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; } // Внешний ключ для услуги
        public DateTime Day { get; set; }
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
        public string Title { get; set; }
        public string Description { get; set; }
        public int Id { get; set; }
        public int SpecialistId { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; }
        public DateTime Day { get; set; }
        public string TimeInterval { get; set; }
    }
}
