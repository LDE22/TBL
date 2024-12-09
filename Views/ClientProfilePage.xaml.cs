using TBL.Data; // ���������� ������������ ��� ��� UserData
namespace TBL.Views;

public partial class ClientProfilePage : ContentPage
{
    public ClientProfilePage()
    {
        InitializeComponent();
        BindingContext = UserData.Users.FirstOrDefault(u => u.Role == "Client");
    }

    private async void OnChangePhotoClicked(object sender, EventArgs e)
    {
        try
        {
            // ��������� ������� ��� ������ �����������
            var result = await FilePicker.PickAsync(new PickOptions
            {
                PickerTitle = "�������� �����������",
                FileTypes = FilePickerFileType.Images
            });

            if (result != null)
            {
                // ������������� ��������� �����������
                ProfileImage.Source = ImageSource.FromFile(result.FullPath);

                // ��������� ���� � ����������� � �������� ������������
                var user = BindingContext as User;
                if (user != null)
                {
                    user.Photo = result.FullPath;
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("������", $"�� ������� ��������� ����: {ex.Message}", "OK");
        }
    }

    private async void OnDeleteAccountClicked(object sender, EventArgs e)
    {
        bool confirm = await DisplayAlert("�������� ��������", "�� �������, ��� ������ ������� �������?", "��", "���");
        if (confirm)
        {
            // ����� ����� �������� ������ �������� ��������
            await DisplayAlert("�������", "��� ������� ��� ������.", "OK");
            await Navigation.PopToRootAsync();
        }
    }
}
