using System.Net.Http;
using System.Text.Json;
using System.Text;
using TBL.Models;
using System.Net.Http.Json;
using System.Diagnostics;
using System.Windows.Input;
using System;
using System.Text.Json.Serialization;

namespace TBL.Data
{
    public class UserData
    {
        private readonly HttpClient _client;
        public event Action<User> UserUpdated;
        public ICommand CreateChatCommand { get; }
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
            var servicesResponse = JsonSerializer.Deserialize<ServicesResponse>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            });

            return servicesResponse?.Data ?? new List<Service>();
        }

        // Получение услуги по её ID
        public async Task<Service> GetServiceByIdAsync(int serviceId)
        {
            var response = await _client.GetAsync($"Services/{serviceId}");
            response.EnsureSuccessStatusCode();

            var service = await response.Content.ReadFromJsonAsync<Service>();
            if (service == null)
            {
                throw new Exception($"Услуга с ID {serviceId} не найдена.");
            }

            return service;
        }


        public async Task DeleteFavoriteAsync(int favoriteId)
        {
            var response = await _client.DeleteAsync($"Favorites/remove/{favoriteId}");
            response.EnsureSuccessStatusCode();
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

        // Запись клиента
        public async Task BookServiceAsync(Booking booking)
        {
            if (booking.SpecialistId <= 0 || booking.ClientId <= 0 || booking.ServiceId <= 0)
            {
                throw new ArgumentException("Не все обязательные поля заполнены.");
            }

            if (booking.Day == default)
            {
                throw new ArgumentException("Неверная дата.");
            }

            if (string.IsNullOrWhiteSpace(booking.TimeInterval))
            {
                throw new ArgumentException("Неверный временной интервал.");
            }

            var response = await _client.PostAsJsonAsync("Booking/book", new
            {
                specialistId = booking.SpecialistId,
                clientId = booking.ClientId,
                serviceId = booking.ServiceId,
                day = booking.Day.ToString("o"), // Приведение к ISO 8601
                timeInterval = booking.TimeInterval
            });

            response.EnsureSuccessStatusCode();
        }

        public async Task<List<Booking>> GetSpecialistOrdersAsync(int specialistId)
        {
            var response = await _client.GetAsync($"Booking/specialist/{specialistId}");
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<List<Booking>>();
        }

        public async Task<List<Booking>> GetClientMeetingsAsync(int clientId)
        {
            var response = await _client.GetAsync($"Booking/client/{clientId}");
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<List<Booking>>();
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
                    var options = new JsonSerializerOptions
                    {
                        PropertyNameCaseInsensitive = true,
                        DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull
                    };
                    return JsonSerializer.Deserialize<User>(json, options) ?? throw new Exception("Пользователь не найден.");
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
        // Полуить специалиста по id
        public async Task<Specialist> GetSpecialistByIdAsync(int specialistId)
        {
            var response = await _client.GetAsync($"Users/Specialists/{specialistId}");
            response.EnsureSuccessStatusCode();

            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<Specialist>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            }) ?? new Specialist();
        }

        public async Task<List<Schedule>> GetSpecialistScheduleAsync(int specialistId)
        {
            try
            {
                var response = await _client.GetAsync($"Schedule/{specialistId}");
                response.EnsureSuccessStatusCode();

                // Чтение данных
                var json = await response.Content.ReadAsStringAsync();

                // Убедитесь, что десериализация соответствует структуре JSON
                var scheduleData = JsonSerializer.Deserialize<Dictionary<string, List<Schedule>>>(json, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                });

                // Вернём данные, если они есть
                return scheduleData?["data"] ?? new List<Schedule>();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка загрузки расписания: {ex.Message}");
                throw;
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
        public async Task UpdateAvatarAsync(int userId, string photoBase64)
        {
            // Исправление структуры отправляемых данных
            var payload = new { PhotoBase64 = photoBase64 };
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

        // Сброс пароля
        public async Task SendPasswordResetRequestAsync(string email)
        {
            var payload = new { Email = email };

            try
            {
                var response = await _client.PostAsJsonAsync("Users/send-password-reset", payload);
                response.EnsureSuccessStatusCode();
            }
            catch (HttpRequestException ex)
            {
                if (ex.StatusCode == System.Net.HttpStatusCode.BadRequest)
                {
                    throw new Exception("Пользователь с указанной почтой не найден.");
                }

                throw new Exception($"Ошибка при отправке запроса: {ex.Message}");
            }
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

        public async Task ResetPasswordAsync(string token, string newPassword)
        {
            var payload = new
            {
                Token = token,
                NewPassword = newPassword
            };

            var response = await _client.PostAsJsonAsync("Users/reset-password", payload);
            response.EnsureSuccessStatusCode();
            var json = await response.Content.ReadAsStringAsync();
        }

        public async Task<List<Chat>> GetChatsAsync(int userId)
        {
            var response = await _client.GetFromJsonAsync<List<Chat>>($"Chats/{userId}");
            return response ?? new List<Chat>();
        }

        public async Task<List<Message>> GetMessagesAsync(int chatId)
        {
            try
            {
                var response = await _client.GetFromJsonAsync<List<Message>>($"Chats/messages/{chatId}");
                return response ?? new List<Message>();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при получении сообщений: {ex.Message}");
                return new List<Message>();
            }
        }
        public async Task SendMessageAsync(Message message)
        {
            if (message == null || message.ChatId <= 0 || string.IsNullOrWhiteSpace(message.Content))
                throw new ArgumentException("Некорректные данные сообщения.");

            var payload = new
            {
                chatId = message.ChatId,
                senderId = message.SenderId,
                receiverId = message.ReceiverId,
                content = message.Content,
                timestamp = message.Timestamp
            };

            var response = await _client.PostAsJsonAsync("Chats/send-message", payload);

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadAsStringAsync();
                throw new Exception($"Ошибка отправки сообщения: {error}");
            }
        }

        public async Task<int> CreateChatAsync(int senderId, int receiverId)
        {
            if (senderId == receiverId)
                return 0;

            var chatRequest = new
            {
                SenderId = senderId,
                ReceiverId = receiverId
            };

            var response = await _client.PostAsJsonAsync("Chats/create", chatRequest);

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadAsStringAsync();
                throw new Exception($"Failed to create chat: {error}");
            }

            var chat = await response.Content.ReadFromJsonAsync<Chat>();
            return chat?.Id ?? throw new Exception("Server did not return a valid chat ID.");
        }


        public async Task DeleteChatAsync(int chatId)
        {
            var response = await _client.DeleteAsync($"Chats/{chatId}");

            if (!response.IsSuccessStatusCode)
            {
                var error = await response.Content.ReadAsStringAsync();
                throw new Exception($"Ошибка удаления чата: {error}");
            }
        }

        // Добавление в избранное
        public async Task AddToFavoritesAsync(Favorite favorite)
        {
            var response = await _client.PostAsJsonAsync("Favorites/add", favorite);
            response.EnsureSuccessStatusCode();
        }

        // Получение избранного
        public async Task<List<Favorite>> GetFavoritesAsync(int clientId)
        {
            var response = await _client.GetStringAsync($"Favorites/{clientId}");
            var favorites = JsonSerializer.Deserialize<List<Favorite>>(response, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true // Учитывать нечувствительность к регистру
            });
            return favorites ?? new List<Favorite>();
        }



        // Удаление из избранного
        public async Task RemoveFromFavoritesAsync(int favoriteId)
        {
            var response = await _client.DeleteAsync($"Favorites/{favoriteId}");
            response.EnsureSuccessStatusCode();
        }

        // Получение расписания для специалиста
        public async Task<List<Schedule>> GetSchedulesAsync(int specialistId)
        {
            var response = await _client.GetAsync($"Schedule/{specialistId}");
            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                return JsonSerializer.Deserialize<List<Schedule>>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
            }
            else
            {
                throw new Exception($"Ошибка при загрузке расписания: {response.ReasonPhrase}");
            }
        }
        // Добавление нового расписания
        public async Task AddScheduleAsync(Schedule schedule)
        {
            var json = JsonSerializer.Serialize(schedule);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _client.PostAsync("Schedule", content);
            if (!response.IsSuccessStatusCode)
            {
                throw new Exception($"Ошибка при добавлении расписания: {response.ReasonPhrase}");
            }
        }

        // Обновление существующего расписания
        public async Task UpdateScheduleAsync(Schedule schedule)
        {
            var json = JsonSerializer.Serialize(schedule);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _client.PutAsync($"Schedule/{schedule.Id}", content);
            if (!response.IsSuccessStatusCode)
            {
                throw new Exception($"Ошибка при обновлении расписания: {response.ReasonPhrase}");
            }
        }
        // Удаление расписания
        public async Task DeleteScheduleAsync(int scheduleId)
        {
            var response = await _client.DeleteAsync($"Schedule/{scheduleId}");
            if (!response.IsSuccessStatusCode)
            {
                throw new Exception($"Ошибка при удалении расписания: {response.ReasonPhrase}");
            }
        }
        public async Task CreateTicketAsync(object ticketPayload)
        {
            var response = await _client.PostAsJsonAsync("/api/Tickets", ticketPayload);

            if (!response.IsSuccessStatusCode)
            {
                var errorContent = await response.Content.ReadAsStringAsync();
                throw new Exception($"Ошибка отправки тикета: {errorContent}");
            }
        }

        public async Task UpdateTicketAsync(Ticket ticket)
        {
            var json = JsonSerializer.Serialize(ticket);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            var response = await _client.PutAsync($"Tickets/{ticket.Id}", content);

            if (!response.IsSuccessStatusCode)
            {
                throw new HttpRequestException($"Ошибка при обновлении тикета: {response.ReasonPhrase}");
            }
        }
        public async Task<ModeratorStats> GetModeratorStatisticsAsync(int moderatorId)
        {
            var response = await _client.GetAsync($"Users/{moderatorId}/statistics");
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<ModeratorStats>();
        }
        public async Task<ModeratorStats> CreateModeratorStatisticsAsync(ModeratorStats stats)
        {
            var response = await _client.PostAsJsonAsync("Users/statistics", stats);

            if (!response.IsSuccessStatusCode)
            {
                throw new HttpRequestException($"Failed to create statistics: {response.ReasonPhrase}");
            }

            return await response.Content.ReadFromJsonAsync<ModeratorStats>();
        }
        public async Task BlockUserAsync(int userId)
        {
            var response = await _client.PutAsync($"Users/{userId}/block", null);
            response.EnsureSuccessStatusCode();
        }

        public async Task DeleteTicketAsync(int ticketId)
        {
            var response = await _client.DeleteAsync($"tickets/{ticketId}");
            response.EnsureSuccessStatusCode();
        }
        public async Task<Ticket> GetTicketByIdAsync(int ticketId)
        {
            var response = await _client.GetAsync($"api/Tickets/{ticketId}");
            response.EnsureSuccessStatusCode();

            var json = await response.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<Ticket>(json, new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            });
        }


        public class ResponseWrapper<T>
        {
            public T Data { get; set; }
        }
        public class ServicesResponse
        {
            public List<Service> Data { get; set; }
        }
    }
}
