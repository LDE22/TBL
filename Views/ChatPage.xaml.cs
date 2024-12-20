using System.Collections.ObjectModel;
using TBL.Data;
using TBL.Models;

namespace TBL.Views
{
    public partial class ChatPage : ContentPage
    {
        private readonly UserData _userData;
        private int currentUserId;
        private int chatUserId;

        public ObservableCollection<Message> Messages { get; set; } = new ObservableCollection<Message>();

        public ChatPage(int loggedInUserId, int targetUserId)
        {
            InitializeComponent();
            _userData = new UserData(new HttpClient());
            currentUserId = loggedInUserId;
            chatUserId = targetUserId;
            BindingContext = this;

            LoadMessagesAsync();
        }

        private async void LoadMessagesAsync()
        {
            try
            {
                var messages = await _userData.GetMessagesAsync(currentUserId, chatUserId);
                Messages.Clear();
                foreach (var message in messages)
                {
                    Messages.Add(message);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить сообщения: {ex.Message}", "ОК");
            }
        }

        private async void OnSendMessageClicked(object sender, EventArgs e)
        {
            try
            {
                var message = new Message
                {
                    SenderId = currentUserId,
                    ReceiverId = chatUserId,
                    Content = MessageEntry.Text,
                    Timestamp = DateTime.UtcNow
                };

                await _userData.SendMessageAsync(message);
                Messages.Add(message);
                MessageEntry.Text = string.Empty;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось отправить сообщение: {ex.Message}", "ОК");
            }
        }
    }
}
