
import 'package:shared_preferences/shared_preferences.dart';


import 'prefs_helper.dart';

abstract class IPrefsHelper {


  Future<SharedPreferences> getPrefs();

  Future<int> getAppLanguage();
  Future<void> setAppLanguage(int value);


  Future<String> getToken();
  Future<int> getUserId();


  // Future<void> saveUser(UserData user,String token,bool active);
  Future<bool> getIsLogin();
  Future<void> setIsLogin();

  // Future<UserData> getUser();




}
