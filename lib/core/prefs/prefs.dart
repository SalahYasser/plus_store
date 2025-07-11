import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static const String screenKey = 'current_screen';

  static Future<bool> saveCurrentScreen(String screenName) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(screenKey, screenName);

    return true;
  }

  static Future<String?> getCurrentScreen() async {
    final prefs = await SharedPreferences.getInstance();

    String? key = prefs.getString(screenKey);

    return key;
  }
}
