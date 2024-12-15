using TBL.Data;
using Microsoft.Maui.Controls;
using Microsoft.EntityFrameworkCore;

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
        using (var db = new AppDbContext(new DbContextOptionsBuilder<AppDbContext>()
    .UseNpgsql("Host=your_host;Port=your_port;Database=your_database;Username=your_user;Password=your_password")
    .Options))
        {
            db.Database.EnsureCreated();
        }

    }

    private async void OnSendMessageClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(NewMessageEntry.Text))
        {
            await DisplayAlert("ќшибка", "¬ведите сообщение.", "OK");
            return;
        }

        using (var db = new AppDbContext(new DbContextOptionsBuilder<AppDbContext>()
    .UseNpgsql("Host=your_host;Port=your_port;Database=your_database;Username=your_user;Password=your_password")
    .Options))
        {
            db.Database.EnsureCreated();
        }


        NewMessageEntry.Text = string.Empty;
        LoadMessages();
    }
}
