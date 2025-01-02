using System.Text.Json;
using System.Text.Json.Serialization;

public class DateOnlyJsonConverter : JsonConverter<DateOnly>
{
    private const string DateFormat = "yyyy-MM-dd";

    public override DateOnly Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
    {
        var value = reader.GetString();

        // Попробуем распарсить как DateOnly
        if (DateOnly.TryParseExact(value, DateFormat, null, System.Globalization.DateTimeStyles.None, out var date))
        {
            return date;
        }

        // Если не получилось, пробуем распарсить как DateTime
        if (DateTime.TryParse(value, out var dateTime))
        {
            return DateOnly.FromDateTime(dateTime);
        }

        // Если оба варианта не удались, выбрасываем исключение
        throw new JsonException($"Неверный формат даты. Ожидался формат {DateFormat} или DateTime (yyyy-MM-ddTHH:mm:ss), получено: {value}");
    }

    public override void Write(Utf8JsonWriter writer, DateOnly value, JsonSerializerOptions options)
    {
        writer.WriteStringValue(value.ToString(DateFormat));
    }
}
