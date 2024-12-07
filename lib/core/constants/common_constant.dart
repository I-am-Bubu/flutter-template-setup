import 'dart:ui';

class CommonConstant {
  static const nameFileEnvDevelopment = '.env.development';
  static const nameFileEnvProduction = '.env.production';
  static const List<String> supportedCurrencies = ['LAK', 'USD', 'THB', 'CNY'];
  static const List<String> supportedLanguages = ['lo', 'en', 'zh', 'vi'];
  static const String defaultDeviceLanguage = 'lo';
  static const String defaultCcy = 'LAK';

// NETWORK
  static const int receiveTimeOut = 90; // Second
  static const int connectionTimeOut = 90; // Second
  static const int sendTimeout = 90; // Second

// TIME OUT APP
  static const int timeOutApp = 5;

//DATE TIME
  static const String defaultDateFormat = 'yyyy-MM-dd';
  static const String longDateFormat = 'yyyy-MM-dd HH:mm:ss';

//Screen Size
  static const Size sizeUtiliOS = Size(402.0, 874.0);
  static const Size sizeUtilAndroid = Size(392.72, 825.45);
}
