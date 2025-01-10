import 'package:app_template_setup/core/helpers/navigation_helper.dart';
import 'package:app_template_setup/core/helpers/secure_storage_helper.dart';
import 'package:app_template_setup/core/helpers/share_preferance_helper.dart';
import 'package:app_template_setup/core/utils/dio_ulti.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

class GetItSetUp {
  static Future<void> initializeGetIt() async {
    // STORAGE
    final sharePref = await SharedPreferences.getInstance();
    getIt.registerLazySingleton(() => sharePref);
    getIt.registerLazySingleton(() => const FlutterSecureStorage());

    //Helper
    getIt.registerLazySingleton(() => SecureStorageHelper(getIt()));
    getIt.registerLazySingleton(() => SharePreferanceHelper(getIt()));
    getIt.registerLazySingleton(() => NavigationHelper());

    // Dio
    getIt.registerLazySingleton(() => dioInterceptor(getIt(), getIt()));
  }
}
