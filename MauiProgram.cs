using Microsoft.Extensions.DependencyInjection;
using TBL.Views;
using TBL.Data;  // пространство имён для UserData
using Microsoft.Maui.Storage;

namespace TBL;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            });

        // Регистрация зависимостей
        builder.Services.AddSingleton<UserData>();
        builder.Services.AddSingleton<FavoritesService>();
        builder.Services.AddSingleton<ClientAppShell>();
        builder.Services.AddSingleton<MainPage>();
        builder.Services.AddTransient<MnPage>();
        builder.Services.AddTransient<Profile>();
        builder.Services.AddTransient<ChatPage>();
        builder.Services.AddTransient<ChatsPage>();
        builder.Services.AddTransient<ServicesPage>();
        builder.Services.AddTransient<BookmarksPage>();
        builder.Services.AddTransient<EditSchedulePage>();
        builder.Services.AddTransient<StatisticsPage>();

        // Регистрация HttpClient и UserData
        builder.Services.AddHttpClient<UserData>(client =>
        {
            client.BaseAddress = new Uri("https://tblapi-production.up.railway.app/api/");
        });
        return builder.Build();
    }
}
