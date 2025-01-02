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
            OnPropertyChanged(nameof(CurrentUser)); // ���������� ���������
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
                await DisplayAlert("������", "������������ �� ������.", "OK");
                return;
            }

            // ������������� ������ ������������
            CurrentUser = user;

            // ��������� ��������� �����������
            OnPropertyChanged(nameof(IsClient));
            OnPropertyChanged(nameof(IsModerator));
            OnPropertyChanged(nameof(IsSpecialist));

            // �������� ������ ��� �����
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
            await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
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

            // ���������� ��������� ������ ��� ��������� ���������� �������
            var tempOrders = new List<Order>();

            foreach (var booking in bookings)
            {
                // �������� ������ �� ������
                var service = await _userData.GetServiceByIdAsync(booking.ServiceId);

                // �������� ������ � �������
                var client = await _userData.GetUserAsync(booking.ClientId);

                // ��������� ���������� ����� � ��������� ������
                tempOrders.Add(new Order
                {
                    Title = service?.Title ?? "����������� ������", // �������� ������
                    Description = service?.Description ?? "�������� �����������", // �������� ������
                    ClientName = client?.Name ?? "����������� ������", // ��� �������
                    ClientPhoto = client?.PhotoBase64 ?? string.Empty, // ���� �������
                    Day = booking.Day, // ���� ������
                    TimeInterval = FormatTimeInterval(booking.TimeInterval) // ����������� ����� ��� ������
                });
            }

            // ������� ������ Orders � ��������� ���������� ������ �� ���������� ������
            Orders.Clear();
            foreach (var order in tempOrders)
            {
                Orders.Add(order);
            }

            OnPropertyChanged(nameof(HasOrders));
        }
        catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
        {
            Orders.Clear();
            OnPropertyChanged(nameof(HasOrders));
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
        }
    }

    private async Task LoadMeetings()
    {
        try
        {
            var clientId = Preferences.Get("UserId", 0);
            var meetings = await _userData.GetClientMeetingsAsync(clientId);

            // ���������� ��������� ������ ��� ��������� ���������� ������
            var tempMeetings = new List<Meeting>();

            foreach (var meeting in meetings)
            {
                // �������� ������ �� ������
                var service = await _userData.GetServiceByIdAsync(meeting.ServiceId);

                // �������� ������ � �����������
                var specialist = await _userData.GetUserAsync(meeting.SpecialistId);

                // ��������� ���������� ������� � ��������� ������
                tempMeetings.Add(new Meeting
                {
                    Title = service?.Title ?? "����������� ������", // �������� ������
                    Description = service?.Description ?? "�������� �����������", // �������� ������
                    SpecialistName = specialist?.Name ?? "����������� ����������", // ��� �����������
                    SpecialistPhoto = specialist?.PhotoBase64 ?? string.Empty, // ���� �����������
                    Day = meeting.Day, // ���� �������
                    TimeInterval = FormatTimeInterval(meeting.TimeInterval) // ����������� ����� ��� ������
                });
            }

            // ������� ������ Meetings � ��������� ���������� ������� �� ���������� ������
            Meetings.Clear();
            foreach (var meeting in tempMeetings)
            {
                Meetings.Add(meeting);
            }

            OnPropertyChanged(nameof(HasMeetings));
        }
        catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
        {
            Meetings.Clear();
            OnPropertyChanged(nameof(HasMeetings));
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� �������: {ex.Message}", "OK");
        }
    }

    // ��������������� ������� ��� ����������� �������������� �������
    private string FormatTimeInterval(string timeInterval)
    {
        var parts = timeInterval.Split('-');
        if (parts.Length == 2 &&
            TimeSpan.TryParse(parts[0].Trim(), out var start) &&
            TimeSpan.TryParse(parts[1].Trim(), out var end))
        {
            // ������� ������� � ��������� ������ ���� � ������
            return $"{start:hh\\:mm} - {end:hh\\:mm}";
        }

        return "����� �� �������"; // ��������� ������ ��������� �������
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
            await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
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
                await DisplayAlert("�����", "������ ��������� � ���������.", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"�� ������� �������� � ���������: {ex.Message}", "OK");
            }
            finally
            {
                SetLoadingState(false);
            }
        }
        else
        {
            await DisplayAlert("������", "�� ������� �������� ������������� ������.", "OK");
        }
    }

    private async void OpenSpecialistProfile(Service selectedService)
    {
        if (selectedService == null) return;

        try
        {
            SetLoadingState(true);
            // ������� �� �������� ������� �����������
            await Navigation.PushAsync(new SpecialistProfilePage(selectedService.SpecialistId, _userData));
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ������� ������� �����������: {ex.Message}", "OK");
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
            await DisplayAlert("������", "������������ �� ��������. ��������� ��� ���������� ��� ���.", "OK");
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
            await DisplayAlert("������", $"������ ������ �����: {ex.Message}", "OK");
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
            await DisplayAlert("������", "�� ������� ��������� ������ ������.", "OK");
        }
    }

}
