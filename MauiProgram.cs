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
        builder.Services.AddTransient<MnPage>();
        builder.Services.AddTransient<Profile>();
        builder.Services.AddTransient<ChatPage>();
        builder.Services.AddTransient<ServicesPage>();

        // Регистрация HttpClient и UserData
        builder.Services.AddHttpClient<UserData>(client =>
        {
            client.BaseAddress = new Uri("https://tblapi-production.up.railway.app/api/");
        });
        return builder.Build();
    }
}
