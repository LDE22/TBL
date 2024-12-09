using TBL.Data;

namespace TBL.Views
{
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            LoginButton.Clicked += OnLoginButtonClicked;
        }

        private async void OnForgotPasswordClicked(object sender, EventArgs e)
        {
            // ������� �� �������� �������������� ������
            await Navigation.PushAsync(new RepairPassPage());
        }

        private async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(LoginEntry.Text) || string.IsNullOrWhiteSpace(PasswordEntry.Text))
            {
                await DisplayAlert("������", "������� ����� � ������.", "OK");
                return;
            }

            // ��������� ������ ������������
            var user = UserData.Users.FirstOrDefault(u => u.Login == LoginEntry.Text && u.Password == PasswordEntry.Text);
            if (user == null)
            {
                await DisplayAlert("������", "�������� ����� ��� ������.", "OK");
                return;
            }

            // ��������� ���� ������������
            Preferences.Set("UserRole", user.Role);

            // �������������� �� ��������������� Shell
            switch (user.Role)
            {
                case "Specialist":
                    Application.Current.MainPage = new SpecialistAppShell();
                    break;
                case "Client":
                    Application.Current.MainPage = new ClientAppShell();
                    break;
                case "Moderator":
                    Application.Current.MainPage = new ModeratorAppShell();
                    break;
            }
        }

    }
}
