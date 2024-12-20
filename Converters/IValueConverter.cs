using System.Globalization;

namespace TBL.Converters
{
    public class GridLengthToDoubleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is GridLength gridLength)
            {
                return gridLength.Value; // Преобразует GridLength в Double
            }
            return 0; // Значение по умолчанию
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

}
