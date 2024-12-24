using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using TBL.Models;
using TBL.Data;

namespace TBL.Views
{
    public partial class BookmarksPage : ContentPage, INotifyPropertyChanged
    {
        private readonly UserData _userData;
        public ICommand OpenSpecialistProfileCommand { get; }

        private bool _isLoading;
        public bool IsLoading
        {
            get => _isLoading;
            set
            {
                _isLoading = value;
                OnPropertyChanged();
            }
        }

        public ObservableCollection<Favorite> Favorites { get; set; } = new();

        public BookmarksPage(UserData userData)
        {
            InitializeComponent();
            _userData = userData ?? throw new ArgumentNullException(nameof(userData));
            OpenSpecialistProfileCommand = new Command<Favorite>(OpenSpecialistProfile);
            BindingContext = this;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadFavoritesAsync();
        }
        private async void OpenSpecialistProfile(Favorite selectedFavorite)
        {
            if (selectedFavorite?.Service == null)
            {
                Debug.WriteLine("[DEBUG] Favorite ��� Service ����� null.");
                return;
            }

            Debug.WriteLine($"[DEBUG] ������� � ������� ����������� � ID: {selectedFavorite.Service.SpecialistId}");

            // ������� �� �������� ������� �����������
            await Navigation.PushAsync(new SpecialistProfilePage(selectedFavorite.Service.SpecialistId, _userData));
        }

        private async Task LoadFavoritesAsync()
        {
            try
            {
                IsLoading = true;

                var clientId = Preferences.Get("UserId", 0);
                if (clientId == 0)
                {
                    await DisplayAlert("������", "�� ������� ���������� ������������. ���������� �����.", "��");
                    return;
                }

                var favorites = await _userData.GetFavoritesAsync(clientId);
                Debug.WriteLine($"[DEBUG] �������� ���������: {favorites?.Count ?? 0} �������.");

                Favorites.Clear();
                if (favorites != null && favorites.Any())
                {
                    foreach (var favorite in favorites)
                    {
                        Debug.WriteLine($"[DEBUG] ���������� � ������: {favorite.Service?.Title}");
                        Favorites.Add(new Favorite
                        {
                            Id = favorite.Id,
                            ClientId = favorite.ClientId,
                            ServiceId = favorite.ServiceId,
                            Name = favorite.Service?.Title ?? "�� �������",
                            Description = favorite.Service?.Description ?? "��� ��������",
                            Service = favorite.Service
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[DEBUG] ������ �������� ����������: {ex.Message}");
                await DisplayAlert("������", $"�� ������� ��������� ���������: {ex.Message}", "��");
            }
            finally
            {
                IsLoading = false;
            }
        }

        private async void OnDeleteFavorite(object sender, EventArgs e)
        {
            if (sender is ImageButton button && button.CommandParameter is int favoriteId)
            {
                try
                {
                    await _userData.RemoveFromFavoritesAsync(favoriteId);

                    var favoriteToRemove = Favorites.FirstOrDefault(f => f.Id == favoriteId);
                    if (favoriteToRemove != null)
                    {
                        Favorites.Remove(favoriteToRemove);
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlert("������", $"�� ������� ������� �� ����������: {ex.Message}", "��");
                }
            }
        }

        private void OnPropertyChanged([CallerMemberName] string propertyName = null) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        public event PropertyChangedEventHandler PropertyChanged;
    }
}