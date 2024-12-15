using TBL.Models;
using Newtonsoft.Json;
using Microsoft.Maui.Controls;

namespace TBL.Views;

public partial class LoginPage : ContentPage
{
    public LoginPage()
    {
        InitializeComponent();
    }

    private async void OnLoginButtonClicked(object sender, EventArgs e)
    {
        using (var httpClient = new HttpClient())
        {
            var result = await httpClient.GetAsync("http://<ваш-сервер>/api/users");
            if (result.IsSuccessStatusCode)
            {
                var json = await result.Content.ReadAsStringAsync();
                var users = JsonConvert.DeserializeObject<List<User>>(json);

                var user = users.FirstOrDefault(u => u.Username == LoginEntry.Text && u.Password == PasswordEntry.Text);
                if (user != null)
                {
                    Application.Current.MainPage = new SpecialistAppShell();
                }
            }
        }
    }
    private async void OnForgotPasswordClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RepairPassPage());
    }
}
