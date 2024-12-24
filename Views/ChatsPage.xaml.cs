using System.Collections.ObjectModel;
using TBL.Models;
using TBL.Data;

namespace TBL.Views
{
    public partial class ChatsPage : ContentPage
    {
        private readonly UserData _userData;
        public ObservableCollection<Chat> Chats { get; set; } = new();

        public bool IsBusy { get; set; }
        public bool IsEmpty => !Chats.Any() && !IsBusy;
        public bool IsNotEmpty => Chats.Any() && !IsBusy;

        public ChatsPage(UserData userData)
        {
            InitializeComponent();
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));
            BindingContext = this;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadChatsAsync();
        }

        private async Task LoadChatsAsync()
        {
            IsBusy = true;
            OnPropertyChanged(nameof(IsBusy));
            OnPropertyChanged(nameof(IsEmpty));
            OnPropertyChanged(nameof(IsNotEmpty));

            try
            {
                var userId = Preferences.Get("UserId", 0);
                if (userId == 0)
                {
                    await DisplayAlert("Ошибка", "Не удалось определить пользователя. Попробуйте снова.", "ОК");
                    return;
                }

                var chats = await _userData.GetChatsAsync(userId);

                Chats.Clear();
                foreach (var chat in chats)
                {
                    var isSender = chat.SenderId == userId;
                    var otherUserId = isSender ? chat.ReceiverId : chat.SenderId;

                    var otherUser = await _userData.GetUserAsync(otherUserId);

                    chat.Name = otherUser.Name;
                    chat.AvatarUrl = otherUser.PhotoBase64;
                    Chats.Add(chat);
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось загрузить чаты: {ex.Message}", "ОК");
            }
            finally
            {
                IsBusy = false;
                OnPropertyChanged(nameof(IsBusy));
                OnPropertyChanged(nameof(IsEmpty));
                OnPropertyChanged(nameof(IsNotEmpty));
            }
        }

        private async void OnChatSelected(object sender, SelectionChangedEventArgs e)
        {
            if (e.CurrentSelection.FirstOrDefault() is Chat selectedChat)
            {
                try
                {
                    // Переход на соответствующий ChatPage
                    await Navigation.PushAsync(new ChatPage(selectedChat.Id, _userData));
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Не удалось открыть чат: {ex.Message}", "OK");
                }
            }

            // Сбрасываем выделение, чтобы можно было снова выбрать тот же элемент
            ((CollectionView)sender).SelectedItem = null;
        }
    }
}
