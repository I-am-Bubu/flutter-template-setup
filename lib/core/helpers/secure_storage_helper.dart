import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  SecureStorageHelper(this.secureStorage);
  final FlutterSecureStorage secureStorage;

  Future<void> saveSecureStorage(String key, String value) async {
    await secureStorage.write(key: key, value: value);
  }

  Future<String?> getSecureStorage(String key) async {
    return await secureStorage.read(key: key);
  }

  Future<void> deleteSecureStorage(String key) async {
    return await secureStorage.delete(key: key);
  }

  Future<void> deleteAllSecureStorage() async {
    return await secureStorage.deleteAll();
  }
}
