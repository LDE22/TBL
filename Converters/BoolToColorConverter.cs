using System;
using System.Globalization;
using Microsoft.Maui.Controls;

namespace TBL.Converters;

public class BoolToColorConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        bool isSentByMe = (bool)value;
        return isSentByMe ? "#DFF7C5" : "#F0F0F0"; // Зеленое и серое облачка
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
