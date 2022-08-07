
import 'package:di_market_second/core/app_language.dart';
import 'package:di_market_second/core/base_widget/constent.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'iprefs_helper.dart';



class PrefsHelper implements IPrefsHelper {

  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<int> getAppLanguage() async {
    return (await getPrefs()).getInt(APP_LANGUAGE) ?? AppLanguageKeys.EN;
  }

  @override
  Future<void> setAppLanguage(int value) async {
    (await getPrefs()).setInt(APP_LANGUAGE, value);
  }
  @override
  Future<void> setIsLogin() async{
    // TODO: implement setIsLogin
    (await getPrefs()).setBool(IS_LOGIN, true);
  }
  @override
  Future<String> getToken() async {
    return ((await getPrefs()).getString(TOKEN))!;
  }

  @override
  Future<int> getUserId() async {
    return ((await getPrefs()).getInt(ID))!;
  }


  @override
  Future<bool> getIsLogin() async {
    // TODO: implement getIsLogin
    return (await getPrefs()).getBool(IS_LOGIN) ?? false;
  }



  Future<String> getMobileNumber() async {
    // TODO: implement getToken
    return ((await getPrefs()).getString(MOBILE))!;
  }

}
