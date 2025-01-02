using TBL.Data;
using TBL.Models;

namespace TBL.Views;

public partial class StatisticsPage : ContentPage
{
    private readonly UserData _userData;
    public ModeratorStats Statistics { get; set; }

    public StatisticsPage(UserData userData)
    {
        InitializeComponent();
        _userData = userData;
        LoadStatisticsAsync();
    }

    private async void LoadStatisticsAsync()
    {
        try
        {
            var moderatorId = Preferences.Get("UserId", 0);

            // Загружаем статистику с сервера
            Statistics = await _userData.GetModeratorStatisticsAsync(moderatorId);

            // Обновляем интерфейс
            ClosedTicketsLabel.Text = Statistics.ClosedTickets.ToString();
            BlockedProfilesLabel.Text = Statistics.BlockedProfiles.ToString();
            RestrictedProfilesLabel.Text = Statistics.RestrictedProfiles.ToString();
            RejectedTicketsLabel.Text = Statistics.RejectedTickets.ToString();
        }
        catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
        {
            // Создаём статистику, если её нет
            try
            {
                var newStats = new ModeratorStats
                {
                    ModeratorId = Preferences.Get("UserId", 0),
                    ClosedTickets = 0,
                    BlockedProfiles = 0,
                    RestrictedProfiles = 0,
                    RejectedTickets = 0
                };

                Statistics = await _userData.CreateModeratorStatisticsAsync(newStats);

                // Обновляем интерфейс
                ClosedTicketsLabel.Text = Statistics.ClosedTickets.ToString();
                BlockedProfilesLabel.Text = Statistics.BlockedProfiles.ToString();
                RestrictedProfilesLabel.Text = Statistics.RestrictedProfiles.ToString();
                RejectedTicketsLabel.Text = Statistics.RejectedTickets.ToString();
            }
            catch (Exception createEx)
            {
                await DisplayAlert("Ошибка", $"Не удалось создать статистику: {createEx.Message}", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось загрузить статистику: {ex.Message}", "OK");
        }
    }
}
