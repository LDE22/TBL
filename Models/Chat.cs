using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TBL.Models
{
    public class Chat
    {
        public int Id { get; set; }
        public int SenderId { get; set; }
        public int ReceiverId { get; set; }
        public string LastMessage { get; set; }
        public DateTime Timestamp { get; set; }

        public string Name { get; set; } // Имя собеседника
        public string AvatarUrl { get; set; }
    }
}
