using Microsoft.Maui.Storage;
using System.Diagnostics;
using System.Text.Json;
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
            //InitializeYandexMap();
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
                    await DisplayAlert("������", "������������ �� ������.", "OK");
                    return;
                }

                BindingContext = _currentUser;
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"������ �������� ������: {ex.Message}", "OK");
            }
        }
       /* private void InitializeYandexMap()
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
    <div id='map' style='width: 100%; height: 100%;'></div>
    <script>
        ymaps.ready(function () {
            var map = new ymaps.Map('map', {
                center: [55.76, 37.64], // ����� ����� (������)
                zoom: 10
            });

            var placemark = new ymaps.Placemark([55.76, 37.64], {
                balloonContent: '������� �����'
            });

            map.geoObjects.add(placemark);

            map.events.add('click', function (e) {
                var coords = e.get('coords');
                placemark.geometry.setCoordinates(coords);
                placemark.properties.set('balloonContent', '�� �������: ' + coords.join(', '));

                // �������� ��������� ����� ��������� window.location.href
                window.location.href = 'https://coords/' + coords[0] + '/' + coords[1];
            });
        });
    </script>
</body>
</html>"
            };

            YandexMapWebView.Source = htmlSource;

            // ��������� Navigating ��� ��������� ���������
            YandexMapWebView.Navigating += (sender, e) =>
            {
                Debug.WriteLine($"Navigating triggered: {e.Url}"); // ���������� �����

                if (e.Url.StartsWith("https://coords/"))
                {
                    try
                    {
                        var parts = e.Url.Replace("https://coords/", "").Split('/');

                        // ���������, ��� ������ �������� ����� ��� �����
                        if (parts.Length == 2 &&
                            double.TryParse(parts[0], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out var latitude) &&
                            double.TryParse(parts[1], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out var longitude))
                        {
                            // ��������� ������
                            _currentUser.Latitude = latitude;
                            _currentUser.Longitude = longitude;
                            _currentUser.Address = $"Lat: {latitude}, Lon: {longitude}";

                            // ��������� Label
                            SelectedLocationLabel.Text = $"��������� ��������������: {_currentUser.Address}";
                            Debug.WriteLine($"���������� ���������: {_currentUser.Address}");
                        }
                        else
                        {
                            Debug.WriteLine("�������� ������ ���������.");
                        }

                        e.Cancel = true; // ������������� ���������
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine($"������ ��������� ���������: {ex.Message}");
                    }
                }
            };
        }


        public class Coordinates
        {
            public double Latitude { get; set; }
            public double Longitude { get; set; }
        }*/

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

        private async void OnDeleteAccountClicked(object sender, EventArgs e)
        {
            bool confirm = await DisplayAlert("�������� ��������", "�� �������, ��� ������ ������� �������?", "��", "���");
            if (!confirm) return;

            try
            {
                await _userData.BlockUserAsync(_currentUser.Id);
                Preferences.Clear();
                await DisplayAlert("�����", "������� ������� �����.", "OK");
                Application.Current.MainPage = new NavigationPage(new LoginPage(_userData));
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"�� ������� ������� �������: {ex.Message}", "OK");
            }
        }

        private async void OnSaveChangesClicked(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrWhiteSpace(NameEntry.Text)) _currentUser.Name = NameEntry.Text;
                if (!string.IsNullOrWhiteSpace(DescriptionEntry.Text)) _currentUser.Description = DescriptionEntry.Text;
                if (!string.IsNullOrWhiteSpace(CityEntry.Text)) _currentUser.City = CityEntry.Text;
                await _userData.UpdateUserAsync(_currentUser);
                await DisplayAlert("�����", "������� �������", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("������", $"������ ����������: {ex.Message}", "OK");
            }
        }
    }
}
