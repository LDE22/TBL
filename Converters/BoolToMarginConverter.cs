using System;
using System.Globalization;
using Microsoft.Maui.Controls;

namespace TBL.Converters;

public class BoolToMarginConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        bool isSentByMe = (bool)value;
        return isSentByMe ? LayoutOptions.End : LayoutOptions.Start;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
