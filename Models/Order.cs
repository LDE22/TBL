using System;

namespace TBL.Models
{
    public class Order
    {
        public string ClientName { get; set; } // ��� �������
        public DateTime Date { get; set; }    // ���� � �����
        public string Time { get; set; }     // ����� ������
        public string ServiceType { get; set; } // ��� ������
        public string Photo { get; set; } = "default_photo.png"; // ���� �������
    }
}
