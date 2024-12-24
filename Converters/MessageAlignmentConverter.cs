using System.Globalization;
using Microsoft.Maui.Controls;

namespace TBL.Converters
{
    public class MessageAlignmentConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var currentUserId = Preferences.Get("UserId", 0);

            if (value is int senderId)
            {
                return senderId == currentUserId ? LayoutOptions.End : LayoutOptions.Start;
            }

            return LayoutOptions.Start;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
