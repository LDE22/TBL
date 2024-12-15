using System.Net.Http.Json;
using TBL.Models;

namespace TBL.Services
{
    public class ApiService
    {
        private readonly HttpClient _client;

        public ApiService()
        {
            _client = new HttpClient
            {
                BaseAddress = new Uri("http://your-server-url/api/")
            };
        }

        public async Task<List<User>> GetUsers()
        {
            return await _client.GetFromJsonAsync<List<User>>("users");
        }

        public async Task CreateUser(User user)
        {
            await _client.PostAsJsonAsync("users", user);
        }
    }
}
