using System.Collections.ObjectModel;
using System.Diagnostics;
using TBL.Data;
using TBL.Models;

namespace TBL.Views
{
    public partial class ChatPage : ContentPage
    {
        private readonly UserData _userData;
        public ObservableCollection<Message> Messages { get; set; } = new();

        private int _receiverId; // ID получателя
        private int _chatId; // ID чата

        public ChatPage(int chatIdOrReceiverId, UserData userData, bool isChatId = true)
        {
            InitializeComponent();
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));

            if (isChatId)
            {
                _chatId = chatIdOrReceiverId; // Если передан chatId
            }
            else
            {
                _receiverId = chatIdOrReceiverId; // Если передан receiverId
            }

            BindingContext = this;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            // Если передан ReceiverId, пытаемся найти существующий чат
            if (_chatId == 0 && _receiverId > 0)
            {
                var senderId = Preferences.Get("UserId", 0); // ID текущего пользователя
                var existingChat = await _userData.GetChatsAsync(senderId);

                var chat = existingChat.FirstOrDefault(c =>
                    (c.SenderId == senderId && c.ReceiverId == _receiverId) ||
                    (c.SenderId == _receiverId && c.ReceiverId == senderId));

                if (chat != null)
                {
                    _chatId = chat.Id; // Устанавливаем ID существующего чата
                }
            }

            // Если чат найден (или был передан chatId), загружаем сообщения
            if (_chatId > 0)
            {
                var messages = await _userData.GetMessagesAsync(_chatId);
                Messages.Clear();
                foreach (var message in messages)
                {
                    Messages.Add(message);
                }
            }
            else
            {
            }
        }

        private async void OnSendMessage(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(MessageEntry.Text))
            {
                Debug.WriteLine(_chatId);
                if (_chatId == 0)
                {
                    // Создаём новый чат, если он не существует
                    try
                    {
                        _chatId = await _userData.CreateChatAsync(
                            senderId: Preferences.Get("UserId", 0),
                            receiverId: _receiverId
                        );
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("Ошибка", $"Не удалось создать чат: {ex.Message}", "OK");
                        return;
                    }
                }

                // Отправляем сообщение в существующий или новый чат
                var newMessage = new Message
                {
                    ChatId = _chatId,
                    SenderId = Preferences.Get("UserId", 0),
                    ReceiverId = _receiverId,
                    Content = MessageEntry.Text,
                    Timestamp = DateTime.UtcNow
                };

                try
                {
                    await _userData.SendMessageAsync(newMessage);
                    Messages.Add(newMessage);
                    MessageEntry.Text = string.Empty;
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Ошибка отправки сообщения: {ex.Message}", "OK");
                }
            }
        }

        private async void OnReportClicked(object sender, EventArgs e)
        {
            if (_receiverId == 0 || _receiverId == Preferences.Get("UserId", 0))
            {
                // Попробуйте найти существующий чат
                var senderId = Preferences.Get("UserId", 0);
                var chats = await _userData.GetChatsAsync(senderId);

                // Найти чат, где текущий пользователь является отправителем или получателем
                var chat = chats.FirstOrDefault(c =>
                    (c.SenderId == senderId && c.ReceiverId != senderId) || // Получатель должен быть другим пользователем
                    (c.ReceiverId == senderId && c.SenderId != senderId));  // Отправитель должен быть другим пользователем

                if (chat != null)
                {
                    _receiverId = chat.SenderId == senderId ? chat.ReceiverId : chat.SenderId; // Определяем _receiverId
                }

                if (_receiverId == 0)
                {
                    await DisplayAlert("Ошибка", "Получатель не определен. Проверьте данные чата.", "OK");
                    return;
                }
            }


            string comment = await DisplayPromptAsync("Жалоба", "Опишите проблему или причину жалобы:");
            if (!string.IsNullOrWhiteSpace(comment))
            {
                var ticket = new Ticket
                {
                    UserId = Preferences.Get("UserId", 0), // ID пользователя, отправляющего жалобу
                    TargetId = _receiverId,
                    Comment = comment,
                    Status = "Active",
                    CreatedAt = DateTime.UtcNow,
                    ModeratorId = 0,
                    ActionTaken = "none"
                };
                try
                {
                    await _userData.CreateTicketAsync(ticket);
                    await DisplayAlert("Успех", "Ваша жалоба успешно отправлена.", "OK");
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Не удалось отправить жалобу: {ex.Message}", "OK");
                }
            }
        }

    }

}
