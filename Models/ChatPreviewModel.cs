namespace TBL.Models
{
    public class ChatPreviewModel
    {
        public int UserId { get; set; }
        public string Username { get; set; }
        public string LastMessage { get; set; }
        public DateTime Timestamp { get; set; }
    }
}
