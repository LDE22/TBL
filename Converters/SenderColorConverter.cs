using System.Globalization;
using Microsoft.Maui.Graphics;

namespace TBL.Converters
{
    public class SenderColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var currentUserId = Preferences.Get("UserId", 0);

            if (value is int senderId)
            {
                return senderId == currentUserId ? Color.FromArgb("#0000FF") : Color.FromArgb("#808080");
            }

            return Color.FromArgb("#808080");
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
