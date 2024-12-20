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
                Debug.WriteLine($"[INFO] Загружен Username из Preferences: {username}");

                var users = await _userData.GetUsersAsync();
                _currentUser = users.FirstOrDefault(u => u.Username == username);

                if (_currentUser == null || string.IsNullOrWhiteSpace(_currentUser.Name))
                {
                    await DisplayAlert("Ошибка", "Пользователь не найден.", "OK");
                    return;
                }

                BindingContext = _currentUser;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ERROR] Ошибка загрузки данных: {ex.Message}");
                await DisplayAlert("Ошибка", $"Ошибка загрузки данных: {ex.Message}", "OK");
            }
        }

        private async void OnChangePhotoClicked(object sender, EventArgs e)
        {
            try
            {
                var result = await FilePicker.PickAsync(new PickOptions
                {
                    PickerTitle = "Выберите изображение",
                    FileTypes = FilePickerFileType.Images
                });

                if (result != null)
                {
                    var base64 = Convert.ToBase64String(File.ReadAllBytes(result.FullPath));
                    _currentUser.PhotoBase64 = $"data:image/png;base64,{base64}";

                    // Отправка данных на сервер
                    await _userData.UpdateAvatarAsync(_currentUser.Id, _currentUser.PhotoBase64);

                    // Обновление привязки
                    BindingContext = null;
                    BindingContext = _currentUser;

                    await DisplayAlert("Успех", "Аватарка успешно обновлена.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось изменить фото: {ex.Message}", "OK");
            }
        }
        private async void OnSaveChangesClicked(object sender, EventArgs e)
        {
            try
            {
                // Проверка изменений
                bool isNameChanged = !string.IsNullOrWhiteSpace(NameEntry.Text) && _currentUser.Name != NameEntry.Text;
                bool isCityChanged = !string.IsNullOrWhiteSpace(CityEntry.Text) && _currentUser.City != CityEntry.Text;
                bool isDescriptionChanged = !string.IsNullOrWhiteSpace(DescriptionEntry.Text) && _currentUser.Description != DescriptionEntry.Text;

                // Если изменений нет, выходим
                if (!isNameChanged && !isCityChanged && !isDescriptionChanged)
                {
                    await DisplayAlert("Нет изменений", "Вы не внесли никаких изменений в профиль.", "OK");
                    return;
                }

                // Обновляем данные
                if (isNameChanged) _currentUser.Name = NameEntry.Text;
                if (isCityChanged) _currentUser.City = CityEntry.Text;
                if (isDescriptionChanged) _currentUser.Description = DescriptionEntry.Text;

                // Отправка изменений на сервер
                await _userData.UpdateUserAsync(_currentUser);

                // Обновляем только изменённые значения Placeholder
                if (isNameChanged) NameEntry.Placeholder = _currentUser.Name;
                if (isCityChanged) CityEntry.Placeholder = _currentUser.City;
                if (isDescriptionChanged) DescriptionEntry.Placeholder = _currentUser.Description;

                // Очищаем поля ввода
                NameEntry.Text = string.Empty;
                CityEntry.Text = string.Empty;
                DescriptionEntry.Text = string.Empty;

                await DisplayAlert("Успех", "Профиль обновлён", "OK");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при сохранении: {ex.Message}");
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }

        private async void OnDeleteAccountClicked(object sender, EventArgs e)
        {
            bool confirm = await DisplayAlert("Удаление аккаунта", "Вы уверены, что хотите удалить аккаунт?", "Да", "Нет");
            if (!confirm) return;

            try
            {
                await _userData.DeleteUserAsync(_currentUser.Id);
                Preferences.Clear();
                await DisplayAlert("Успех", "Аккаунт успешно удалён.", "OK");
                Application.Current.MainPage = new NavigationPage(new LoginPage(_userData));
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[ERROR] Ошибка удаления аккаунта: {ex.Message}");
                await DisplayAlert("Ошибка", $"Не удалось удалить аккаунт: {ex.Message}", "OK");
            }
        }
    }
}
