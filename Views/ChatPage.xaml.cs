using TBL.Data;
using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class ChatPage : ContentPage
{
    public int CurrentUserId { get; set; }
    public int OtherUserId { get; set; }

    public ChatPage()
    {
        InitializeComponent();
        LoadMessages();
    }

    public ChatPage(int currentUserId, int otherUserId)
    {
        InitializeComponent();
        CurrentUserId = currentUserId;
        OtherUserId = otherUserId;

        LoadMessages();
    }

    private void LoadMessages()
    {
        using (var db = new AppDbContext())
        {
            var messages = db.Messages
                .Where(m => (m.SenderId == CurrentUserId && m.ReceiverId == OtherUserId) ||
                            (m.SenderId == OtherUserId && m.ReceiverId == CurrentUserId))
                .OrderBy(m => m.Timestamp)
                .ToList();

            MessagesListView.ItemsSource = messages;
        }
    }

    private async void OnSendMessageClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(NewMessageEntry.Text))
        {
            await DisplayAlert("ќшибка", "¬ведите сообщение.", "OK");
            return;
        }

        using (var db = new AppDbContext())
        {
            db.Messages.Add(new Models.Message
            {
                Content = NewMessageEntry.Text,
                SenderId = CurrentUserId,
                ReceiverId = OtherUserId,
                Timestamp = DateTime.UtcNow
            });

            await db.SaveChangesAsync();
        }

        NewMessageEntry.Text = string.Empty;
        LoadMessages();
    }
}
