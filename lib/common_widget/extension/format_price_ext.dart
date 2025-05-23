import 'package:intl/intl.dart' show NumberFormat;

extension FormatPrice on double {
  String formatPrice() {
    final formatter =
        NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 2);
    return formatter.format(this);
  }
}
