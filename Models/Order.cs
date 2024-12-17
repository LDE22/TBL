using System;
public class Order
{
    public int Id { get; set; } // Первичный ключ
    public string ClientName { get; set; }
    public DateTime Date { get; set; }
    public string Time { get; set; }
    public string ServiceType { get; set; }
    public string Photo { get; set; }
}

