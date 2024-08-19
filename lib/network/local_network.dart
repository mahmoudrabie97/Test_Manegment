import 'package:shared_preferences/shared_preferences.dart';

class CachNetwork {
  static late SharedPreferences sharedPref;
  static Future cachinitilization() async {
    sharedPref = await SharedPreferences.getInstance();
  }
  static Future<bool> setDate(
      {required String key, required dynamic value}) async {
    if (value is int) {
      await sharedPref?.setInt(key, value);
      return true;
    }
    if (value is String) {
      await sharedPref?.setString(key, value);
      return true;
    }
    if (value is double) {
      await sharedPref?.setDouble(key, value);
      return true;
    }
    if (value is bool) {
      await sharedPref?.setBool(key, value);
      return true;
    }
    return false;
  }
  // set -get delete clear {key value }
  static Future<bool> insertTocache(
      {required String key, required String value}) async {
    return await sharedPref.setString(key, value);
  }

  static String getcacheData({required String key}) {
    return sharedPref.getString(key) ?? '';
  }

  static Future<bool> deleteCacheItem({required String key}) async {
    return await sharedPref.remove(key);
  }
}
