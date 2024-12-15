using System;

namespace TBL.Models
{
    public class Order
    {
        public string ClientName { get; set; } // Имя клиента
        public DateTime Date { get; set; }    // Дата и время
        public string Time { get; set; }     // Время услуги
        public string ServiceType { get; set; } // Тип услуги
        public string Photo { get; set; } = "default_photo.png"; // Фото клиента
    }
}
