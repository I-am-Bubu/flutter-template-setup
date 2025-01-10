import 'package:shared_preferences/shared_preferences.dart';

class SharePreferanceHelper {
  SharePreferanceHelper(this.sharePref);
  final SharedPreferences sharePref;

  Future<void> saveSharePreferance(String key, String value) async {
    await sharePref.setString(key, value);
  }

  Future<String?> getSharePreferance(String key) async {
    return sharePref.getString(key);
  }

  Future<void> deleteSharePreferance(String key) async {
    await sharePref.remove(key);
  }
}
