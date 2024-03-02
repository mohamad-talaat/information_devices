// ignore: camel_case_types
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    //must put async and await
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> setData(
      {required String key, required bool value}) async {
    return await sharedPreferences.setBool(key, value);
  }

  static Future<bool?> getData({required String key}) async {
    return sharedPreferences.getBool(key);
  }
}
