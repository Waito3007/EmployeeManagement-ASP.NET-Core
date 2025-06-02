using System.ComponentModel;
using System.Globalization;

namespace EmployeeManagement.Converters
{
    public class DateOnlyTypeConverter : TypeConverter
    {
        public override bool CanConvertFrom(ITypeDescriptorContext? context, Type sourceType)
        {
            return sourceType == typeof(string) || base.CanConvertFrom(context, sourceType);
        }

        public override object? ConvertFrom(ITypeDescriptorContext? context, CultureInfo? culture, object value)
        {
            if (value is string stringValue)
            {
                if (DateTime.TryParse(stringValue, culture, DateTimeStyles.None, out var dateTime))
                {
                    return DateOnly.FromDateTime(dateTime);
                }
            }

            return base.ConvertFrom(context, culture, value);
        }

        public override bool CanConvertTo(ITypeDescriptorContext? context, Type? destinationType)
        {
            return destinationType == typeof(string) || base.CanConvertTo(context, destinationType);
        }

        public override object? ConvertTo(ITypeDescriptorContext? context, CultureInfo? culture, object? value, Type destinationType)
        {
            if (destinationType == typeof(string) && value is DateOnly dateOnly)
            {
                return dateOnly.ToString("yyyy-MM-dd", culture);
            }

            return base.ConvertTo(context, culture, value, destinationType);
        }
    }
}
