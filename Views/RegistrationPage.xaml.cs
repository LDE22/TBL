using Microsoft.EntityFrameworkCore;
using TBL.Data;
using TBL.Models;

namespace TBL.Views;

public partial class RegistrationPage : ContentPage
{
    private string _selectedRole;

    public RegistrationPage()
    {
        InitializeComponent();
    }

    private async void OnNextButtonClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(UsernameEntry.Text) || string.IsNullOrWhiteSpace(PasswordEntry.Text) || string.IsNullOrWhiteSpace(EmailEntry.Text) || string.IsNullOrWhiteSpace(_selectedRole))
        {
            await DisplayAlert("Ошибка", "Заполните все поля.", "OK");
            return;
        }

        using (var db = new AppDbContext(new DbContextOptionsBuilder<AppDbContext>()
            .UseNpgsql("Host=your_host;Port=your_port;Database=your_database;Username=your_user;Password=your_password")
            .Options))
        {
            db.Database.EnsureCreated();
        }
        await DisplayAlert("Успех", "Регистрация завершена.", "OK");
        await Navigation.PopToRootAsync();
    }

    private void OnRoleSelected(object sender, CheckedChangedEventArgs e)
    {
        if (e.Value)
        {
            var radioButton = sender as RadioButton;
            _selectedRole = radioButton?.Value?.ToString();
        }
    }
}
