import 'package:intl/intl.dart';

extension NumPriceExtension on num {
  /// Formats a price value to a string with currency on the right side
  /// Example: 100.toPriceString() returns "100 €"
  /// Uses comma as decimal separator instead of dot
  String toPriceString({int decimals = 2}) {
    return '${toStringAsFixed(decimals).replaceAll('.', ',')} €';
  }

  /// Format number with commas (e.g., 1000 -> 1,000)
  String toStringWithCommas() {
    final formatter = NumberFormat.decimalPattern('de_DE');
    return formatter.format(this);
  }
}
