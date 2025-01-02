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

            // ��������� ���������� � �������
            Statistics = await _userData.GetModeratorStatisticsAsync(moderatorId);

            // ��������� ���������
            ClosedTicketsLabel.Text = Statistics.ClosedTickets.ToString();
            BlockedProfilesLabel.Text = Statistics.BlockedProfiles.ToString();
            RestrictedProfilesLabel.Text = Statistics.RestrictedProfiles.ToString();
            RejectedTicketsLabel.Text = Statistics.RejectedTickets.ToString();
        }
        catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.NotFound)
        {
            // ������ ����������, ���� � ���
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

                // ��������� ���������
                ClosedTicketsLabel.Text = Statistics.ClosedTickets.ToString();
                BlockedProfilesLabel.Text = Statistics.BlockedProfiles.ToString();
                RestrictedProfilesLabel.Text = Statistics.RestrictedProfiles.ToString();
                RejectedTicketsLabel.Text = Statistics.RejectedTickets.ToString();
            }
            catch (Exception createEx)
            {
                await DisplayAlert("������", $"�� ������� ������� ����������: {createEx.Message}", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� ����������: {ex.Message}", "OK");
        }
    }
}
