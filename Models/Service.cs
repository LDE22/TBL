using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace TBL.Models
{
    public class Service
    {
        [JsonPropertyName("id")]
        public int Id { get; set; }
        
        [JsonPropertyName("title")]
        public required string Title { get; set; }

        [JsonPropertyName("description")]
        public string Description { get; set; }

        [JsonPropertyName("price")]
        public decimal Price { get; set; }

        [JsonPropertyName("specialistId")]
        public int SpecialistId { get; set; }

        [JsonPropertyName("SpecialistName")]
        public string SpecialistName{ get; set; }

        [JsonPropertyName("City")]
        public string City { get; set; }
        [JsonPropertyName("Duration")]
        public int Duration { get; set; }
        public List<Review> Reviews { get; set; } = new List<Review>();
        public List<Favorite> Favorites { get; set; } = new List<Favorite>();
    }
}
