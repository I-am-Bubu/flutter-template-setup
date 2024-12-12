import 'package:app_template_setup/core/constants/common_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvSetUp {
  static String get fileName => kReleaseMode ? CommonConstant.nameFileEnvProduction : CommonConstant.nameFileEnvDevelopment;
  static String get baseUrl => dotenv.env['BASE_URL'] ?? 'localhost:3000';

  static String get env => dotenv.env['ENV'] ?? 'UAT';
}
