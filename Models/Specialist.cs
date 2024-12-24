using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TBL.Models
{
    public class Specialist
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string PhotoBase64 { get; set; }
        public string City { get; set; }
        public List<Service> Services { get; set; }
    }

}
