using TBL.Data;
using Microsoft.Maui.Controls;
using Microsoft.EntityFrameworkCore;

namespace TBL.Views;

public partial class ChatsPage : ContentPage
{
    public int CurrentUserId { get; set; }

    public ChatsPage()
    {
        InitializeComponent();
        LoadChats();
    }

    public ChatsPage(int currentUserId)
    {
        InitializeComponent();
        CurrentUserId = currentUserId;
        LoadChats();
    }

    private async void LoadChats()
    {
        LoadingIndicator.IsVisible = true;
        LoadingIndicator.IsRunning = true;

        try
        {
            using (var db = new AppDbContext())
            {
                var chats = await db.Messages
                    .Where(m => m.SenderId == CurrentUserId || m.ReceiverId == CurrentUserId)
                    .GroupBy(m => m.SenderId == CurrentUserId ? m.ReceiverId : m.SenderId)
                    .Select(g => new ChatModel
                    {
                        UserId = g.Key,
                        LastMessage = g.OrderByDescending(m => m.Timestamp).FirstOrDefault().Content,
                        LastMessageTime = g.Max(m => m.Timestamp)
                    })
                    .ToListAsync();

                ChatsListView.ItemsSource = chats;
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить чаты: {ex.Message}", "OK");
        }
        finally
        {
            LoadingIndicator.IsVisible = false;
            LoadingIndicator.IsRunning = false;
        }
    }

    private async void OnChatSelected(object sender, SelectedItemChangedEventArgs e)
    {
        var chat = e.SelectedItem as ChatModel;
        if (chat != null)
        {
            await Navigation.PushAsync(new ChatPage(CurrentUserId, chat.UserId));
        }
    }
}

public class ChatModel
{
    public int UserId { get; set; }
    public string LastMessage { get; set; }
    public DateTime LastMessageTime { get; set; }
}
