using System.Collections.ObjectModel;
using System.Windows.Input;
using TBL.Models;
using TBL.Data;

namespace TBL.ViewModels
{
    public class ChatPageViewModel : BaseViewModel
    {
        private readonly UserData _userData;
        private readonly int _chatId;

        public ObservableCollection<Message> Messages { get; set; } = new();
        public string NewMessage { get; set; }

        public ICommand SendMessageCommand { get; }

        public ChatPageViewModel(UserData userData, int chatId)
        {
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));
            _chatId = chatId;

            SendMessageCommand = new Command(async () => await SendMessageAsync());
            LoadMessagesAsync();
        }

        private async Task LoadMessagesAsync()
        {
            try
            {
                var messages = await _userData.GetMessagesAsync(_chatId);
                Messages.Clear();
                foreach (var message in messages)
                {
                    Messages.Add(message);
                }
            }
            catch (Exception ex)
            {
                // Обработайте ошибку
            }
        }

        private async Task SendMessageAsync()
        {
            if (string.IsNullOrWhiteSpace(NewMessage))
                return;

            try
            {
                var senderId = Preferences.Get("UserId", 0);
                var message = new Message
                {
                    ChatId = _chatId,
                    SenderId = senderId,
                    Content = NewMessage,
                    Timestamp = DateTime.UtcNow
                };

                await _userData.SendMessageAsync(message);

                Messages.Add(message);
                NewMessage = string.Empty;
            }
            catch (Exception ex)
            {
                // Обработайте ошибку
            }
        }
    }
}
