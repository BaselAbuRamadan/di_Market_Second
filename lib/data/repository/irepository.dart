
import 'package:di_market_second/model/HomeScreen/homeScreen.dart';
import 'package:di_market_second/model/Settings/settings_model.dart';
import 'package:built_collection/src/list.dart';
import 'package:di_market_second/model/User/user_model.dart';

import '../../model/pageDetails/pageDetails.dart';


abstract class IRepository {


  Future<HomeeScreenModel> getHomeData();
  Future<UserModel> getProfileData();
  Future<SettingsModel> getSettingsData();
  Future<PageDetailsModel> getPageDetailsModel(int PageID);
  Future<UserModel> login(
      String username_email ,
      String password ,
      String fcm_token ,
      String device_type ,
      );


}
