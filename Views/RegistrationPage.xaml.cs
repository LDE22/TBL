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

        using (var db = new AppDbContext())
        {
            var userExists = db.Users.Any(u => u.Username == UsernameEntry.Text || u.Email == EmailEntry.Text);
            if (userExists)
            {
                await DisplayAlert("Ошибка", "Пользователь с таким логином или email уже существует.", "OK");
                return;
            }

            db.Users.Add(new User
            {
                Username = UsernameEntry.Text,
                Password = PasswordEntry.Text,
                Email = EmailEntry.Text,
                Role = _selectedRole
            });
            await db.SaveChangesAsync();
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
