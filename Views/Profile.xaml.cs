using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using System.Diagnostics;
using System.Text;
using TBL.Data;
using TBL.Models;
using TBL.Converters;
using System.Text.Json;

namespace TBL.Views
{
    public partial class Profile : ContentPage
    {
        private readonly UserData _userData;
        private User _currentUser;

        public Profile(UserData userData)
        {
            InitializeComponent();
            _userData = userData;
            LoadUserData();
        }

        private async void LoadUserData()
        {
            try
            {
                var username = Preferences.Get("Username", string.Empty);
                Debug.WriteLine($"[INFO] �������� Username �� Preferences: {username}");

                var users = await _userData.GetUsersAsync();
                _currentUser = users.FirstOrDefault(u => u.Username == username);

                if (_currentUser == null || string.IsNullOrWhiteSpace(_currentUser.Name))
                {
                    await DisplayAlert("������", "������������ �� ������.", "OK");
                    return;
                }

                BindingContext = _currentUser;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ERROR] ������ �������� ������: {ex.Message}");
                await DisplayAlert("������", $"������ �������� ������: {ex.Message}", "OK");
            }
        }

        private async void OnChangePhotoClicked(object sender, EventArgs e)
        {
            try
            {
                var result = await FilePicker.PickAsync(new PickOptions
                {
                    PickerTitle = "�������� �����������",
                    FileTypes = FilePickerFileType.Images
                });

                if (result != null)
                {
                    var base64 = Convert.ToBase64String(File.ReadAllBytes(result.FullPath));
                    _currentUser.PhotoBase64 = $"data:image/png;base64,{base64}";

                    // �������� ������ �� ������
                    await _userData.UpdateAvatarAsync(_currentUser.Id, _currentUser.PhotoBase64);

                    // ���������� ��������
                    BindingContext = null;
                    BindingContext = _currentUser;

                    await DisplayAlert("�����", "�������� ������� ���������.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"�� ������� �������� ����: {ex.Message}", "OK");
            }
        }
        private async void OnSaveChangesClicked(object sender, EventArgs e)
        {
            try
            {
                // �������� ���������
                bool isNameChanged = !string.IsNullOrWhiteSpace(NameEntry.Text) && _currentUser.Name != NameEntry.Text;
                bool isCityChanged = !string.IsNullOrWhiteSpace(CityEntry.Text) && _currentUser.City != CityEntry.Text;
                bool isDescriptionChanged = !string.IsNullOrWhiteSpace(DescriptionEntry.Text) && _currentUser.Description != DescriptionEntry.Text;

                // ���� ��������� ���, �������
                if (!isNameChanged && !isCityChanged && !isDescriptionChanged)
                {
                    await DisplayAlert("��� ���������", "�� �� ������ ������� ��������� � �������.", "OK");
                    return;
                }

                // ��������� ������
                if (isNameChanged) _currentUser.Name = NameEntry.Text;
                if (isCityChanged) _currentUser.City = CityEntry.Text;
                if (isDescriptionChanged) _currentUser.Description = DescriptionEntry.Text;

                // �������� ��������� �� ������
                await _userData.UpdateUserAsync(_currentUser);

                // ��������� ������ ��������� �������� Placeholder
                if (isNameChanged) NameEntry.Placeholder = _currentUser.Name;
                if (isCityChanged) CityEntry.Placeholder = _currentUser.City;
                if (isDescriptionChanged) DescriptionEntry.Placeholder = _currentUser.Description;

                // ������� ���� �����
                NameEntry.Text = string.Empty;
                CityEntry.Text = string.Empty;
                DescriptionEntry.Text = string.Empty;

                await DisplayAlert("�����", "������� �������", "OK");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"������ ��� ����������: {ex.Message}");
                await DisplayAlert("������", ex.Message, "OK");
            }
        }

        private async void OnDeleteAccountClicked(object sender, EventArgs e)
        {
            bool confirm = await DisplayAlert("�������� ��������", "�� �������, ��� ������ ������� �������?", "��", "���");
            if (!confirm) return;

            try
            {
                await _userData.DeleteUserAsync(_currentUser.Id);
                Preferences.Clear();
                await DisplayAlert("�����", "������� ������� �����.", "OK");
                Application.Current.MainPage = new NavigationPage(new LoginPage(_userData));
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ERROR] ������ �������� ��������: {ex.Message}");
                await DisplayAlert("������", $"�� ������� ������� �������: {ex.Message}", "OK");
            }
        }
    }
}
