namespace TBL.Models
{
    public class Order
    {
        public int Id { get; set; }
        public int SpecialistId { get; set; } // ID �����������
        public int ClientId { get; set; }     // ID �������
        public int ServiceId { get; set; }    // ID ������
        public DateTime Day { get; set; }     // ���� ������
        public string TimeInterval { get; set; } // ��������� ��������

        public string Title { get; set; }     // �������� ������
        public string Description { get; set; } // �������� ������
        public string ClientName { get; set; }  // ��� �������
        public string ClientPhoto { get; set; }
    }
}
