import 'package:intl/intl.dart';

class FormattUtils {
  static currencyFormatter({String? numberString, int? decimal = 2}) {
    if (numberString == null || numberString == "0") return "0.00";
    double numFromStr = 0.0;

    try {
      numFromStr = double.parse(numberString.replaceAll(',', '').replaceAll(' ', '').replaceAll('(', '').replaceAll(')', ''));
      // ignore: empty_catches
    } catch (e) {}
    return NumberFormat.currency(symbol: "", decimalDigits: decimal, locale: 'en-US').format(numFromStr);
  }

  static String phoneFormatter({required String? phoneString}) {
    if (phoneString == null || phoneString.isEmpty) return "";
    return "${phoneString.substring(0, 2)} ${phoneString.substring(2, phoneString.length).replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ")}";
  }
}
