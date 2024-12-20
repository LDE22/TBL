using Microsoft.Maui.Controls;
using System.Collections.ObjectModel;
using System.Diagnostics;
using TBL.Data;
using TBL.Models;

namespace TBL.Views;

public partial class MnPage : ContentPage
{
    private User _currentUser;
    private readonly UserData _userData;
    public ObservableCollection<Service> SearchResults { get; set; } = new ObservableCollection<Service>();

    public MnPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
        BindingContext = this; // ������������� �������� ������ �����
        LoadUserInterfaceAsync();
    }

    private async void LoadUserInterfaceAsync()
    {
        Console.WriteLine("[INFO] �������� �������� ���������� ������������");

        try
        {
            var username = Preferences.Get("Username", string.Empty);
            Console.WriteLine($"[INFO] Username �� Preferences: {username}");

            var users = await _userData.GetUsersAsync();
            _currentUser = users.FirstOrDefault(u => u.Username == username);

            if (_currentUser == null)
            {
                Console.WriteLine("[ERROR] ������������ �� ������");
                await DisplayAlert("������", "������������ �� ������.", "OK");
                return;
            }

            // ������������� ���������
            UpdateVisibility(_currentUser.Role);

            // ����������� �������� ������
            BindingContext = _currentUser;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[ERROR] ������ �������� ������: {ex.Message}");
            await DisplayAlert("������", $"�� ������� ��������� ������: {ex.Message}", "OK");
        }
    }

    private void UpdateVisibility(string role)
    {
        // ���������� ��������� ���� �����������
        ClientContent.IsVisible = false;
        ModeratorContent.IsVisible = false;
        SpecialistContent.IsVisible = false;

        // ������������� ��������� � ����������� �� ����
        switch (role)
        {
            case "Client":
                ClientContent.IsVisible = true;
                break;
            case "Moderator":
                ModeratorContent.IsVisible = true;
                break;
            case "Specialist":
                SpecialistContent.IsVisible = true;
                break;
            default:
                Console.WriteLine("[WARN] ����������� ����: " + role);
                break;
        }
    }
    private async void OnSearchTextChanged(object sender, TextChangedEventArgs e)
    {
        if (string.IsNullOrWhiteSpace(e.NewTextValue))
        {
            SearchResults.Clear();
            NoResultsLabel.IsVisible = false;
            SearchResultsCollectionView.IsVisible = false;
            return;
        }

        try
        {
            Debug.WriteLine($"[DEBUG] ��������� ����� �� �������: {e.NewTextValue}");
            var results = await _userData.SearchServicesAsync(e.NewTextValue, _currentUser.City);

            SearchResults.Clear();

            if (results.Any())
            {
                Debug.WriteLine("[DEBUG] ��������� ��������� ������:");
                foreach (var service in results)
                {
                    Debug.WriteLine($"[DEBUG] {service.Title} - {service.Description}");
                    SearchResults.Add(service);
                }

                NoResultsLabel.IsVisible = false;
                SearchResultsCollectionView.IsVisible = true;
                Debug.WriteLine($"[DEBUG] ���������� ��������� �����: {SearchResults.Count}");
            }
            else
            {
                Debug.WriteLine("[DEBUG] ������ �� �������");
                NoResultsLabel.IsVisible = true;
                SearchResultsCollectionView.IsVisible = false;
            }
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[ERROR] ������ ������: {ex.Message}");
            await DisplayAlert("������", $"������ ������ �����: {ex.Message}", "OK");
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        LoadUserInterfaceAsync(); // ��������� ���������� ������ ������������
    }
}
