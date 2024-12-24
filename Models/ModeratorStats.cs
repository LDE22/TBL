using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TBL.Models
{
    public class ModeratorStats
    {
        public int ModeratorId { get; set; }
        public int ClosedTickets { get; set; }
        public int BlockedProfiles { get; set; }
        public int RestrictedProfiles { get; set; }
        public int RejectedTickets { get; set; }
    }

}
