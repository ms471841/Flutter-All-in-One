import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  static String valueSharedPrefrences = "VALUE";

// SAVE DATA

  static Future<bool> saveUserData(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setInt(valueSharedPrefrences, value);
  }

  static Future getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(valueSharedPrefrences);
  }
}
