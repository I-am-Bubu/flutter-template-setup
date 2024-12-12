extension StringExtension on String {
  String toCapitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String toReplaceAll() {
    return replaceAll(' ', '').replaceAll(',', '').replaceAll('/', '');
  }
}
