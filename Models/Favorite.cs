using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace TBL.Models
{
    public class Favorite
    {
        public int Id { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public User Client { get; set; }
        public Service Service { get; set; }

        [JsonPropertyName("price")]
        public decimal Price => Service?.Price ?? 0;

        [JsonPropertyName("city")]
        public string City => Service?.City ?? "Не указан";

    }
}
