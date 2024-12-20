using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using TBL.Models;
using TBL.Data;

namespace TBL.Views
{
    public partial class ChatsPage : ContentPage, INotifyPropertyChanged
    {
        private readonly UserData _userData;
        private ObservableCollection<ChatPreview> _chats = new();

        public ObservableCollection<ChatPreview> Chats
        {
            get => _chats;
            set
            {
                _chats = value;
                OnPropertyChanged();
                OnPropertyChanged(nameof(HasChats));
                OnPropertyChanged(nameof(NoChats));
            }
        }

        public bool HasChats => Chats.Count > 0;
        public bool NoChats => Chats.Count == 0;

        public ChatsPage()
        {
            InitializeComponent();
            _userData = new UserData(new HttpClient());
            BindingContext = this;
            LoadChatsAsync();
        }

        private async void LoadChatsAsync()
        {
            try
            {
                var chatModels = await _userData.GetChatsAsync(Preferences.Get("UserId", 0));
                Chats.Clear();
                foreach (var chat in chatModels)
                {
                    Chats.Add(chat);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить чаты: {ex.Message}", "ОК");
            }
        }

        private async void OnChatSelected(object sender, SelectionChangedEventArgs e)
        {
            if (e.CurrentSelection.FirstOrDefault() is ChatPreview selectedChat)
            {
                await Navigation.PushAsync(new ChatPage(selectedChat.ChatId, selectedChat.TargetUserId));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
