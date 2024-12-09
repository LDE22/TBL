using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class ChatsPage : ContentPage
{
    public ChatsPage()
    {
        InitializeComponent();
        BindingContext = new ChatsPageViewModel();
    }

    private async void OnChatSelected(object sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is Chat selectedChat)
        {
            // Переход в выбранный чат
            await Navigation.PushAsync(new ChatPage(selectedChat.UserName));
        }
    }
}

public class Chat
{
    public string UserName { get; set; }
    public string UserPhoto { get; set; }
    public string LastMessage { get; set; }
    public string LastMessageTime { get; set; }
}

public class ChatsPageViewModel
{
    public List<Chat> Chats { get; set; }

    public ChatsPageViewModel()
    {
        Chats = new List<Chat>
        {
            new Chat { UserName = "Алина", UserPhoto = "user1.png", LastMessage = "Привет!", LastMessageTime = "10:45" },
            new Chat { UserName = "Света", UserPhoto = "user2.png", LastMessage = "Когда встреча?", LastMessageTime = "Вчера" },
            new Chat { UserName = "Олег", UserPhoto = "user3.png", LastMessage = "Спасибо за помощь", LastMessageTime = "На прошлой неделе" }
        };
    }
}
