using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using TBL.Models;

namespace TBL.Services
{
    public class ApiService
    {
        private readonly HttpClient _httpClient;

        public ApiService()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri("https://tblapi-production.up.railway.app/")
            };

            // Добавление заголовка JSON по умолчанию
            _httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }

        // Метод для авторизации
        public async Task<User> LoginAsync(string username, string password)
        {
            var credentials = new { Username = username, Password = password };
            var content = new StringContent(JsonConvert.SerializeObject(credentials), Encoding.UTF8, "application/json");

            var response = await _httpClient.PostAsync("api/users/login", content);

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<User>(json);
            }
            return null;
        }

        // Метод для регистрации пользователя
        public async Task<bool> RegisterAsync(User user)
        {
            var json = JsonConvert.SerializeObject(user);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var response = await _httpClient.PostAsync("api/users/register", content);
            return response.IsSuccessStatusCode;
        }

        // Метод для получения списка пользователей
        public async Task<List<User>> GetUsersAsync()
        {
            var response = await _httpClient.GetAsync("api/users");

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<List<User>>(json);
            }
            return null;
        }
    }
}
