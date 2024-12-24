using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Windows.Input;
using TBL.Data;
using TBL.Models;

namespace TBL.Views;

public partial class MnPage : ContentPage
{
    private User _currentUser;
    private readonly FavoritesService _favoritesService;

    public User CurrentUser
    {
        get => _currentUser;
        set
        {
            _currentUser = value;
            OnPropertyChanged(nameof(CurrentUser)); // Уведомляем интерфейс
        }
    }

    private readonly UserData _userData;

    public ObservableCollection<Service> SearchResults { get; set; } = new ObservableCollection<Service>();
    public ObservableCollection<Ticket> Tickets { get; set; } = new ObservableCollection<Ticket>();
    public ObservableCollection<Order> Orders { get; set; } = new ObservableCollection<Order>();
    public ObservableCollection<Meeting> Meetings { get; set; } = new ObservableCollection<Meeting>();
    public ICommand OpenSpecialistProfileCommand { get; }

    public bool IsClient => _currentUser?.Role == "Client";
    public bool IsModerator => _currentUser?.Role == "Moderator";
    public bool IsSpecialist => _currentUser?.Role == "Specialist";
    public bool HasMeetings => Meetings.Any();
    public bool HasOrders => Orders.Any();


    public bool IsLoading { get; set; }

    public MnPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
        OpenSpecialistProfileCommand = new Command<Service>(OpenSpecialistProfile);
        _favoritesService = new FavoritesService(userData);
        BindingContext = this;
        LoadUserInterfaceAsync();
    }

    private async void LoadUserInterfaceAsync()
    {
        try
        {
            SetLoadingState(true);

            var username = Preferences.Get("Username", string.Empty);

            var users = await _userData.GetUsersAsync();
            var user = users.FirstOrDefault(u => u.Username == username);

            if (user == null)
            {
                await DisplayAlert("Ошибка", "Пользователь не найден.", "OK");
                return;
            }

            // Устанавливаем данные пользователя
            CurrentUser = user;

            // Обновляем видимость интерфейсов
            OnPropertyChanged(nameof(IsClient));
            OnPropertyChanged(nameof(IsModerator));
            OnPropertyChanged(nameof(IsSpecialist));

            // Загрузка данных для ролей
            if (IsClient)
            {
                await LoadMeetings();
            }
            else if (IsSpecialist)
            {
                await LoadOrders();
            }
            else if (IsModerator)
            {
                await LoadTickets();
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить данные: {ex.Message}", "OK");
        }
        finally
        {
            SetLoadingState(false);
        }
    }
    private async Task LoadOrders()
    {
        try
        {
            var bookings = await _userData.GetSpecialistOrdersAsync(Preferences.Get("UserId", 0));
            Orders.Clear();

            foreach (var booking in bookings)
            {
                Orders.Add(new Order
                {
                    Title = booking.Title,
                    Description = booking.Description,
                    Day = booking.Day,
                    TimeInterval = booking.TimeInterval,
                    ClientName = booking.ClientName,
                    ClientPhoto = booking.ClientPhoto // Загрузка фото клиента
                });
            }

            OnPropertyChanged(nameof(Orders));
        }
        catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
        {
            Orders.Clear();
            OnPropertyChanged(nameof(HasOrders));
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить заказы: {ex.Message}", "OK");
        }
    }

    private async Task LoadMeetings()
    {
        try
        {
            var clientId = Preferences.Get("UserId", 0);
            var meetings = await _userData.GetClientMeetingsAsync(clientId);

            Meetings.Clear();
            foreach (var meeting in meetings)
            {
                Meetings.Add(new Meeting
                {
                    Title = meeting.Title,
                    Description = meeting.Description,
                    Day = meeting.Day,
                    TimeInterval = meeting.TimeInterval
                });
            }

            OnPropertyChanged(nameof(HasMeetings));
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить встречи: {ex.Message}", "OK");
        }
    }

    private async Task LoadTickets()
    {
        try
        {
            SetLoadingState(true);

            var tickets = await _userData.GetTicketsAsync();
            Tickets.Clear();
            foreach (var ticket in tickets)
            {
                Tickets.Add(ticket);
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить тикеты: {ex.Message}", "OK");
        }
        finally
        {
            SetLoadingState(false);
        }
    }

    private async void OnAddToFavoritesClicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.CommandParameter is int serviceId)
        {
            try
            {
                SetLoadingState(true);

                var clientId = Preferences.Get("UserId", 0);
                await _favoritesService.AddFavoriteAsync(clientId, serviceId);
                await DisplayAlert("Успех", "Услуга добавлена в избранное.", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось добавить в избранное: {ex.Message}", "OK");
            }
            finally
            {
                SetLoadingState(false);
            }
        }
        else
        {
            await DisplayAlert("Ошибка", "Не удалось получить идентификатор услуги.", "OK");
        }
    }

    private async void OpenSpecialistProfile(Service selectedService)
    {
        if (selectedService == null) return;

        try
        {
            SetLoadingState(true);
            // Переход на страницу профиля специалиста
            await Navigation.PushAsync(new SpecialistProfilePage(selectedService.SpecialistId, _userData));
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось открыть профиль специалиста: {ex.Message}", "OK");
        }
        finally
        {
            SetLoadingState(false);
        }
    }

    private async void OnSearchTextChanged(object sender, TextChangedEventArgs e)
    {
        if (_currentUser == null)
        {
            await DisplayAlert("Ошибка", "Пользователь не загружен. Подождите или попробуйте ещё раз.", "OK");
            return;
        }

        if (string.IsNullOrWhiteSpace(e.NewTextValue))
        {
            SearchResults.Clear();
            NoResultsLabel.IsVisible = false;
            return;
        }

        try
        {
            SetLoadingState(true);

            var results = await _userData.SearchServicesAsync(e.NewTextValue, _currentUser.City);

            SearchResults.Clear();

            if (results.Any())
            {
                foreach (var service in results)
                {
                    Debug.WriteLine($"[Search Result] ID: {service.Id}, Title: {service.Title}, Description: {service.Description}");
                    SearchResults.Add(service);
                }
                NoResultsLabel.IsVisible = false;
            }
            else
            {
                NoResultsLabel.IsVisible = true;
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Ошибка поиска услуг: {ex.Message}", "OK");
        }
        finally
        {
            SetLoadingState(false);
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        LoadUserInterfaceAsync();
    }

    private void SetLoadingState(bool isLoading)
    {
        IsLoading = isLoading;
        LoadingIndicator.IsRunning = isLoading;
        LoadingIndicator.IsVisible = isLoading;
    }

    private async void OnDetailsClicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.CommandParameter is Ticket ticket)
        {
            await Navigation.PushAsync(new TicketDetailsPage(ticket, _userData));
        }
        else
        {
            await DisplayAlert("Ошибка", "Не удалось загрузить детали тикета.", "OK");
        }
    }

}
