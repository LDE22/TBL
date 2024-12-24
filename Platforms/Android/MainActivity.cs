using Android.App;
using Android.Content.PM;
using Android.OS;
using Microsoft.Maui;
using TBL.Views;

namespace TBL; // Пример пространства имен


// Настраиваем фильтр интентов для обработки ссылки из почты
[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation, Exported = true)]
[IntentFilter(
    new[] { Android.Content.Intent.ActionView },
    Categories = new[] { Android.Content.Intent.CategoryDefault, Android.Content.Intent.CategoryBrowsable },
    DataScheme = "myapp",
    DataHost = "reset-password",
    AutoVerify = true)]
public class MainActivity : MauiAppCompatActivity
{
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        // Проверяем наличие deep-link при запуске приложения
        var intent = Intent;
        HandleDeepLink(intent);
    }

    protected override void OnNewIntent(Android.Content.Intent intent)
    {
        base.OnNewIntent(intent);

        // Обрабатываем deep-link, если приложение уже запущено
        HandleDeepLink(intent);
    }

    private void HandleDeepLink(Android.Content.Intent intent)
    {
        if (intent?.Data == null) return;

        var uri = intent.Data;
        if (uri.Scheme == "myapp" && uri.Host == "reset-password")
        {
            var token = uri.GetQueryParameter("token");

            if (!string.IsNullOrEmpty(token))
            {
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    App.Current.MainPage = new NavigationPage(new ResetPasswordPage(token));
                });
            }
        }
    }
}


