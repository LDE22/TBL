using Microsoft.Maui.Storage;
using System.Diagnostics;
using TBL.Data;
using TBL.Models;

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
            InitializeYandexMap();
            LoadUserData();
        }

        private async void LoadUserData()
        {
            try
            {
                var username = Preferences.Get("Username", string.Empty);
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
                await DisplayAlert("Ошибка", $"Ошибка загрузки данных: {ex.Message}", "OK");
            }
        }
        private void InitializeYandexMap()
        {
            var htmlSource = new HtmlWebViewSource
            {
                Html = @"
        <!DOCTYPE html>
        <html>
        <head>
            <script src='https://api-maps.yandex.ru/2.1/?lang=ru_RU&apikey=b779e40b-d752-4359-a3db-2788bdeebb9a'></script>
            <style>
                html, body, #map {
                    width: 100%;
                    height: 100%;
                    margin: 0;
                    padding: 0;
                }
            </style>
        </head>
        <body>
            <div id='map'></div>
            <script>
                ymaps.ready(function () {
                    var map = new ymaps.Map('map', {
                        center: [55.76, 37.64],
                        zoom: 10
                    });

                    map.events.add('click', function (e) {
                        var coords = e.get('coords');
                        map.geoObjects.removeAll();
                        var placemark = new ymaps.Placemark(coords, {
                            balloonContent: 'Вы выбрали: ' + coords
                        });
                        map.geoObjects.add(placemark);

                        if (window.external && window.external.notify) {
                            window.external.notify(coords.join(','));
                        }
                    });
                });
            </script>
        </body>
        </html>"
            };

            YandexMapWebView.Source = htmlSource;

            YandexMapWebView.Navigating += (s, e) =>
            {
                Debug.WriteLine("Я хуеглот");
                if (e.Url.StartsWith("javascript:"))
                {
                    try
                    {
                        var coords = e.Url.Replace("javascript:", "").Split(',');
                        if (coords.Length == 2)
                        {
                            _currentUser.Latitude = double.Parse(coords[0]);
                            _currentUser.Longitude = double.Parse(coords[1]);
                            _currentUser.Address = $"Lat: {_currentUser.Latitude}, Lon: {_currentUser.Longitude}";

                            SelectedLocationLabel.Text = $"Выбранное местоположение: {_currentUser.Address}";
                        }
                        e.Cancel = true;
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine($"Ошибка: {ex.Message}");
                    }
                }
            };
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
                await DisplayAlert("Ошибка", $"Не удалось удалить аккаунт: {ex.Message}", "OK");
            }
        }

        private async void OnSaveChangesClicked(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrWhiteSpace(NameEntry.Text)) _currentUser.Name = NameEntry.Text;
                if (!string.IsNullOrWhiteSpace(DescriptionEntry.Text)) _currentUser.Description = DescriptionEntry.Text;

                await _userData.UpdateUserAsync(_currentUser);
                await DisplayAlert("Успех", "Профиль обновлён", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Ошибка сохранения: {ex.Message}", "OK");
            }
        }
    }
}
