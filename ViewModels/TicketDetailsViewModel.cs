using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using TBL.Data;
using TBL.Models;

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

        public Command BlockTargetCommand { get; }
        public Command DeleteTicketCommand { get; }

        public event PropertyChangedEventHandler PropertyChanged;

        public TicketDetailsViewModel(Ticket ticket, UserData userData)
        {
            _ticket = ticket;
            _userData = userData;

            BlockTargetCommand = new Command(async () => await BlockTargetAsync());
            DeleteTicketCommand = new Command(async () => await DeleteTicketAsync());
        }

        // Загрузка данных (заявитель и цель)
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
                // Обработка ошибок загрузки данных
                await Application.Current.MainPage.DisplayAlert("Ошибка", $"Не удалось загрузить данные: {ex.Message}", "OK");
            }
        }

        private async Task BlockTargetAsync()
        {
            bool confirm = await Application.Current.MainPage.DisplayAlert("Подтверждение",
                $"Вы уверены, что хотите заблокировать {TargetName}?",
                "Да",
                "Нет");

            if (!confirm) return;

            try
            {
                await _userData.BlockUserAsync(_ticket.TargetId);
                await Application.Current.MainPage.DisplayAlert("Успех", $"{TargetName} заблокирован.", "OK");
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Ошибка", $"Не удалось заблокировать: {ex.Message}", "OK");
            }
        }

        private async Task DeleteTicketAsync()
        {
            bool confirm = await Application.Current.MainPage.DisplayAlert("Подтверждение",
                $"Вы уверены, что хотите удалить тикет #{_ticket.Id}?",
                "Да",
                "Нет");

            if (!confirm) return;

            try
            {
                await _userData.DeleteTicketAsync(_ticket.Id);
                await Application.Current.MainPage.DisplayAlert("Успех", "Тикет удалён.", "OK");
                await Application.Current.MainPage.Navigation.PopAsync(); // Возврат на предыдущую страницу
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
