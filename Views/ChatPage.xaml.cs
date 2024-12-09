using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class ChatPage : ContentPage
{
    public ChatPage(string chatWith)
    {
        InitializeComponent();
        BindingContext = new ChatPageViewModel(chatWith);
    }
}

public class Message
{
    public string Text { get; set; }
    public bool IsSentByMe { get; set; }
}

public class ChatPageViewModel
{
    public ObservableCollection<Message> Messages { get; set; }
    public string NewMessageText { get; set; }
    public ICommand SendMessageCommand { get; }

    public ChatPageViewModel(string chatWith)
    {
        Messages = new ObservableCollection<Message>
        {
            new Message { Text = "Привет!", IsSentByMe = false },
            new Message { Text = "Как дела?", IsSentByMe = true }
        };

        SendMessageCommand = new Command(SendMessage);
    }

    private void SendMessage()
    {
        if (!string.IsNullOrWhiteSpace(NewMessageText))
        {
            Messages.Add(new Message { Text = NewMessageText, IsSentByMe = true });
            NewMessageText = string.Empty;
        }
    }
}
