using System.Net.Http;
using System.Text.Json;
using System.Text;
using TBL.Models;
using System.Net.Http.Json;
using System.Diagnostics;

namespace TBL.Data
{
    public class UserData
    {
        private readonly HttpClient _client;
        public event Action<User> UserUpdated;

        public UserData(HttpClient client)
        {
            client.BaseAddress = new Uri("https://tblapi-production.up.railway.app/api/");
            _client = client;
        }

        // Получение всех услуг специалиста
        public async Task<List<Service>> GetServicesBySpecialistAsync(int specialistId)
        {
            var response = await _client.GetAsync($"Services/specialist/{specialistId}");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<Service>>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            }) ?? new List<Service>();
        }

        // Обновление услуги
        public async Task UpdateServiceAsync(Service service)
        {
            var response = await _client.PutAsJsonAsync($"Services/update-service/{service.Id}", service);
            response.EnsureSuccessStatusCode();
        }


        // Добавление услуги
        public async Task AddServiceAsync(Service service)
        {
            // Сериализуем объект в JSON для проверки
            string jsonData = JsonSerializer.Serialize(service, new JsonSerializerOptions { WriteIndented = true });
            var response = await _client.PostAsJsonAsync("Services/add", service);
            response.EnsureSuccessStatusCode();
        }


        // Удаление услуги
        public async Task DeleteServiceAsync(int serviceId)
        {
            var response = await _client.DeleteAsync($"Services/delete/{serviceId}");
            response.EnsureSuccessStatusCode();
        }


        // Поиск услуг
        public async Task<List<Service>> SearchServicesAsync(string query, string city)
        {
            try
            {
                var response = await _client.GetAsync($"Services/search?query={Uri.EscapeDataString(query)}&city={Uri.EscapeDataString(city)}");

                if (response.StatusCode == System.Net.HttpStatusCode.NotFound)
                {
                    // Если ответ NotFound, возвращаем пустой список
                    return new List<Service>();
                }

                response.EnsureSuccessStatusCode();

                var json = await response.Content.ReadAsStringAsync();
                return JsonSerializer.Deserialize<List<Service>>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                }) ?? new List<Service>();
            }
            catch (HttpRequestException httpEx)
            {
                throw new Exception($"Ошибка сети: {httpEx.Message}");
            }
            catch (JsonException jsonEx)
            {
                throw new Exception($"Ошибка обработки ответа: {jsonEx.Message}");
            }
            catch (Exception ex)
            {
                throw new Exception($"Неизвестная ошибка: {ex.Message}");
            }
        }

        // Получение графика специалиста
        public async Task<List<Schedule>> GetSchedulesAsync(int specialistId)
        {
            var response = await _client.GetAsync($"Schedule/{specialistId}");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<Schedule>>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            }) ?? new List<Schedule>();
        }

        // Обновление графика
        public async Task UpdateScheduleAsync(Schedule schedule)
        {
            var response = await _client.PutAsJsonAsync($"Schedule/update-shedule/{schedule.Id}", new
            {
                workingHours = schedule.WorkingHours,
                bookedIntervals = schedule.BookedIntervals
            });
            response.EnsureSuccessStatusCode();
        }

        // Запись клиента
        public async Task BookServiceAsync(Booking booking)
        {
            var response = await _client.PostAsJsonAsync("Schedule/book", new
            {
                specialistId = booking.SpecialistId,
                clientId = booking.ClientId,
                serviceId = booking.ServiceId,
                day = booking.Day,
                timeInterval = booking.TimeInterval
            });
            response.EnsureSuccessStatusCode();
        }
        // Полуить пользователя по id
        public async Task<User> GetUserAsync(int userId)
        {
            try
            {
                var response = await _client.GetAsync($"Users/{userId}");
                if (response.IsSuccessStatusCode)
                {
                    var json = await response.Content.ReadAsStringAsync();
                    return JsonSerializer.Deserialize<User>(json) ?? throw new Exception("Пользователь не найден.");
                }
                else
                {
                    var errorDetails = await response.Content.ReadAsStringAsync();
                    throw new Exception($"Ошибка загрузки пользователя: {response.StatusCode}. Детали: {errorDetails}");
                }
            }
            catch (HttpRequestException ex)
            {
                throw new Exception($"Ошибка сети при загрузке пользователя: {ex.Message}");
            }
            catch (Exception ex)
            {
                throw new Exception($"Неизвестная ошибка: {ex.Message}");
            }
        }


        // Получение всех пользователей
        public async Task<List<User>> GetUsersAsync()
        {
            var response = await _client.GetAsync("Users/all");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<User>>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            }) ?? new List<User>();
        }

        // Логин пользователя
        public async Task<User?> LoginAsync(string login, string password)
        {
            var response = await _client.PostAsJsonAsync("Users/login", new { Login = login, Password = password });

            if (!response.IsSuccessStatusCode || response==null)
            {
                throw new Exception("Неверный логин или пароль.");
            }

            var user = await response.Content.ReadFromJsonAsync<User>();
            return user;
        }


        //Регистрация
        public async Task AddUserAsync(User user)
        {
            var response = await _client.PostAsJsonAsync("Users/register", new
            {
                username = user.Username,
                password = user.Password,
                email = user.Email,
                name = user.Name,
                city = user.City,
                role = user.Role
            });
            response.EnsureSuccessStatusCode();
        }
        //Удаление пользователя
        public async Task DeleteUserAsync(int userId)
        {
            var response = await _client.DeleteAsync($"Users/{userId}");
            if (!response.IsSuccessStatusCode)
            {
                var errorDetails = await response.Content.ReadAsStringAsync();
                throw new Exception($"Ошибка удаления пользователя: {response.StatusCode}. Детали: {errorDetails}");
            }
        }


        // Обновление аватара пользователя
        public async Task UpdateAvatarAsync(int userId, string avatarBase64)
        {
            var payload = new { Avatar = avatarBase64 };
            var response = await _client.PutAsJsonAsync($"Users/update-avatar/{userId}", payload);

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadAsStringAsync();
                throw new Exception($"Ошибка обновления аватара: {response.StatusCode}, {error}");
            }
        }

        // Обновление пользователя
        public async Task UpdateUserAsync(User user)
        {
            var response = await _client.PutAsJsonAsync($"Users/update-profile/{user.Id}", user);

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadAsStringAsync();
                throw new Exception($"Ошибка API: {response.StatusCode}, {error}");
            }
            var updatedUser = await response.Content.ReadFromJsonAsync<User>();
            UserUpdated?.Invoke(updatedUser); // Вызов события
        }


        public async Task<List<ChatPreview>> GetChatsAsync(int userId)
        {
            var response = await _client.GetAsync($"Chat/chats/{userId}");
            Debug.WriteLine(response);
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<ChatPreview>>(json) ?? new List<ChatPreview>();
        }

        // Сброс пароля
        public async Task SendPasswordResetRequestAsync(string email)
        {
            var payload = new { Email = email };
            var response = await _client.PostAsJsonAsync("Users/request-password-reset", payload);
            response.EnsureSuccessStatusCode();
        }

        // Получение логов действий пользователя
        public async Task<List<Log>> GetUserActionLogsAsync(int userId)
        {
            var response = await _client.GetAsync($"Users/logs/{userId}");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<Log>>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true }) ?? new List<Log>();
        }

        // Удаление чата
        public async Task DeleteChatAsync(int userId1, int userId2)
        {
            var response = await _client.DeleteAsync($"Chat/delete-chat/{userId1}/{userId2}");
            response.EnsureSuccessStatusCode();
        }

        // Получение всех сообщений
        public async Task<List<Message>> GetMessagesAsync(int senderId, int receiverId)
        {
            var response = await _client.GetAsync($"Chat/conversation/{senderId}/{receiverId}");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<Message>>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            }) ?? new List<Message>();
        }

        // Отправка сообщения
        public async Task SendMessageAsync(Message message)
        {
            var response = await _client.PostAsJsonAsync("Chat/send", new
            {
                senderId = message.SenderId,
                receiverId = message.ReceiverId,
                content = message.Content
            });
            response.EnsureSuccessStatusCode();
        }

        // Получение всех тикетов
        public async Task<List<Ticket>> GetTicketsAsync()
        {
            var response = await _client.GetAsync("Tickets");
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<Ticket>>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            }) ?? new List<Ticket>();
        }
    }
}
