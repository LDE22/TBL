using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using TBL.Data;
using TBL.Models;
using TBL.Views;

namespace TBL.ViewModels
{
    public class TicketDetailsViewModel : INotifyPropertyChanged
    {
        private readonly UserData _userData;
        private readonly Ticket _ticket;

        // Свойства для отображения данных
        public string TicketTitle => $"Тикет #{_ticket.Id}";
        public string Comment => _ticket.Comment;

        private string _complainantName;
        public string ComplainantName
        {
            get => _complainantName;
            private set
            {
                _complainantName = value;
                OnPropertyChanged();
            }
        }

        private string _complainantPhoto;
        public string ComplainantPhoto
        {
            get => _complainantPhoto;
            private set
            {
                _complainantPhoto = value;
                OnPropertyChanged();
            }
        }

        private string _targetName;
        public string TargetName
        {
            get => _targetName;
            private set
            {
                _targetName = value;
                OnPropertyChanged();
            }
        }

        private string _targetPhoto;
        public string TargetPhoto
        {
            get => _targetPhoto;
            private set
            {
                _targetPhoto = value;
                OnPropertyChanged();
            }
        }

        public Command ShowComplainantActionsCommand { get; }
        public Command ShowTargetActionsCommand { get; }
        public Command DeleteTicketCommand { get; }

        public event PropertyChangedEventHandler PropertyChanged;

        public TicketDetailsViewModel(Ticket ticket, UserData userData)
        {
            _ticket = ticket;
            _userData = userData;

            ShowComplainantActionsCommand = new Command(async () => await ShowActionsAsync(_ticket.UserId, "жалобщика"));
            ShowTargetActionsCommand = new Command(async () => await ShowActionsAsync(_ticket.TargetId, "цели"));
            DeleteTicketCommand = new Command(async () => await DeleteTicketAsync());
        }

        public async Task LoadDataAsync()
        {
            try
            {
                var complainant = await _userData.GetUserAsync(_ticket.UserId);
                ComplainantName = complainant.Name;
                ComplainantPhoto = complainant.PhotoBase64;

                var target = await _userData.GetUserAsync(_ticket.TargetId);
                TargetName = target.Name;
                TargetPhoto = target.PhotoBase64;
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Ошибка", $"Не удалось загрузить данные: {ex.Message}", "OK");
            }
        }


        private async Task ShowActionsAsync(int userId, string userRole)
        {
            string action = await Application.Current.MainPage.DisplayActionSheet(
                $"Действия для {userRole}",
                "Отмена",
                null,
                "Начать чат",
                "Заблокировать");

            if (action == "Начать чат")
            {
                await StartChatAsync(userId);
            }
            else if (action == "Заблокировать")
            {
                await BlockUserAsync(userId);
            }
        }

        private async Task StartChatAsync(int userId)
        {
            try
            {
                await Application.Current.MainPage.Navigation.PushAsync(new ChatPage(userId, _userData, false));
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Ошибка", $"Не удалось начать чат: {ex.Message}", "OK");
            }
        }

        private async Task BlockUserAsync(int userId)
        {
            bool confirm = await Application.Current.MainPage.DisplayAlert(
                "Подтверждение",
                "Вы уверены, что хотите заблокировать пользователя?",
                "Да",
                "Нет");

            if (!confirm) return;

            try
            {
                // Блокировка пользователя
                await _userData.BlockUserAsync(userId);

                // Уведомление об успехе
                await Application.Current.MainPage.DisplayAlert("Успех", "Пользователь заблокирован.", "OK");

                // Обновляем статистику блокировок
                var moderatorId = Preferences.Get("UserId", 0);
                await _userData.UpdateModeratorStatisticsAsync(moderatorId, "BlockedProfiles", 1);

                // Удаляем тикет после блокировки
                await _userData.DeleteTicketAsync(_ticket.Id);

                // Возврат на предыдущую страницу
                await Application.Current.MainPage.Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Ошибка", $"Не удалось заблокировать: {ex.Message}", "OK");
            }
        }

        private async Task DeleteTicketAsync()
        {
            bool confirm = await Application.Current.MainPage.DisplayAlert(
                "Подтверждение",
                $"Вы уверены, что хотите удалить тикет #{_ticket.Id}?",
                "Да",
                "Нет");

            if (!confirm) return;

            try
            {
                // Удаление тикета
                await _userData.DeleteTicketAsync(_ticket.Id);

                // Уведомление об успехе
                await Application.Current.MainPage.DisplayAlert("Успех", "Тикет удалён.", "OK");

                // Обновляем статистику закрытых тикетов
                var moderatorId = Preferences.Get("UserId", 0);
                await _userData.UpdateModeratorStatisticsAsync(moderatorId, "ClosedTickets", 1);

                // Возврат на предыдущую страницу
                await Application.Current.MainPage.Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Ошибка", $"Не удалось удалить тикет: {ex.Message}", "OK");
            }
        }

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
