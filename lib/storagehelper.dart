import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    if (_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();
    }
  }

  // To set a string value
  static Future<bool> setLanguage(String key, String value) {
    return _sharedPreferences!.setString(key, value);
  }

  // To get a string value
  static String? getLanguage(String key) {
    return _sharedPreferences?.getString(key);
  }

  // Similarly, you can create methods for other data types.
}