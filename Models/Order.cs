namespace TBL.Models
{
    public class Order
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; } // ID специалиста
        public int ClientId { get; set; }     // ID клиента
        public int ServiceId { get; set; }    // ID услуги
        public DateTime Day { get; set; }     // Дата заказа
        public string TimeInterval { get; set; } // Временной интервал

        public string Title { get; set; }     // Название услуги
        public string Description { get; set; } // Описание услуги
        public string ClientName { get; set; }  // Имя клиента
        public string ClientPhoto { get; set; }
    }
}
