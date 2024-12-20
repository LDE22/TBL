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
        BindingContext = this; // Устанавливаем контекст данных сразу
        LoadUserInterfaceAsync();
    }

    private async void LoadUserInterfaceAsync()
    {
        Console.WriteLine("[INFO] Начинаем загрузку интерфейса пользователя");

        try
        {
            var username = Preferences.Get("Username", string.Empty);
            Console.WriteLine($"[INFO] Username из Preferences: {username}");

            var users = await _userData.GetUsersAsync();
            _currentUser = users.FirstOrDefault(u => u.Username == username);

            if (_currentUser == null)
            {
                Console.WriteLine("[ERROR] Пользователь не найден");
                await DisplayAlert("Ошибка", "Пользователь не найден.", "OK");
                return;
            }

            // Устанавливаем видимость
            UpdateVisibility(_currentUser.Role);

            // Привязываем контекст данных
            BindingContext = _currentUser;
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[ERROR] Ошибка загрузки данных: {ex.Message}");
            await DisplayAlert("Ошибка", $"Не удалось загрузить данные: {ex.Message}", "OK");
        }
    }

    private void UpdateVisibility(string role)
    {
        // Сбрасываем видимость всех интерфейсов
        ClientContent.IsVisible = false;
        ModeratorContent.IsVisible = false;
        SpecialistContent.IsVisible = false;

        // Устанавливаем видимость в зависимости от роли
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
                Console.WriteLine("[WARN] Неизвестная роль: " + role);
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
            Debug.WriteLine($"[DEBUG] Выполняем поиск по запросу: {e.NewTextValue}");
            var results = await _userData.SearchServicesAsync(e.NewTextValue, _currentUser.City);

            SearchResults.Clear();

            if (results.Any())
            {
                Debug.WriteLine("[DEBUG] Добавляем найденные услуги:");
                foreach (var service in results)
                {
                    Debug.WriteLine($"[DEBUG] {service.Title} - {service.Description}");
                    SearchResults.Add(service);
                }

                NoResultsLabel.IsVisible = false;
                SearchResultsCollectionView.IsVisible = true;
                Debug.WriteLine($"[DEBUG] Количество найденных услуг: {SearchResults.Count}");
            }
            else
            {
                Debug.WriteLine("[DEBUG] Услуги не найдены");
                NoResultsLabel.IsVisible = true;
                SearchResultsCollectionView.IsVisible = false;
            }
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[ERROR] Ошибка поиска: {ex.Message}");
            await DisplayAlert("Ошибка", $"Ошибка поиска услуг: {ex.Message}", "OK");
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        LoadUserInterfaceAsync(); // Загружаем обновлённые данные пользователя
    }
}
