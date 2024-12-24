using System.Diagnostics;
using System.Text.Json;
using TBL.Models;

namespace TBL.Data
{
    public class FavoritesService
    {
        private readonly UserData _userData;

        public FavoritesService(UserData userData)
        {
            _userData = userData;
        }

        public async Task AddFavoriteAsync(int clientId, int serviceId)
        {
            try
            {
                // Получение клиента
                var client = await _userData.GetUserAsync(clientId);

                // Получение конкретной услуги
                var service = await _userData.GetServiceByIdAsync(serviceId);

                var favorite = new Favorite
                {
                    ClientId = clientId,
                    ServiceId = serviceId,
                    Name = service.Title,
                    Description = service.Description,
                    Client = client,
                    Service = service
                };

                // Логирование запроса
                Debug.WriteLine($"[REQUEST] POST /api/Favorites/add Body: {JsonSerializer.Serialize(favorite)}");

                await _userData.AddToFavoritesAsync(favorite);

                Debug.WriteLine($"[SUCCESS] Успешно добавлено в избранное: ClientId={clientId}, ServiceId={serviceId}");
            }
            catch (HttpRequestException ex)
            {
                Debug.WriteLine($"[ERROR] Ошибка сети: {ex.Message}");
                throw new Exception($"Уже добавленно в избранное");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ERROR] {ex.Message}");
                throw new Exception($"Не удалось добавить в избранное: {ex.Message}");
            }
        }


        public async Task<List<Favorite>> GetFavoritesAsync(int clientId)
        {
            return await _userData.GetFavoritesAsync(clientId);
        }

        public async Task RemoveFavoriteAsync(int favoriteId)
        {
            await _userData.RemoveFromFavoritesAsync(favoriteId);
        }
    }
}
