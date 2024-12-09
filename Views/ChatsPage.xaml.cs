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
            // ������� � ��������� ���
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
            new Chat { UserName = "�����", UserPhoto = "user1.png", LastMessage = "������!", LastMessageTime = "10:45" },
            new Chat { UserName = "�����", UserPhoto = "user2.png", LastMessage = "����� �������?", LastMessageTime = "�����" },
            new Chat { UserName = "����", UserPhoto = "user3.png", LastMessage = "������� �� ������", LastMessageTime = "�� ������� ������" }
        };
    }
}
