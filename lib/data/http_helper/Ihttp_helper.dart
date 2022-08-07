import 'dart:io';

import 'package:di_market_second/model/HomeScreen/homeScreen.dart';
import 'package:di_market_second/model/Settings/settings_model.dart';
import 'package:built_collection/src/list.dart';

import 'package:built_collection/built_collection.dart';
import 'package:di_market_second/model/User/user_model.dart';

import '../../model/pageDetails/pageDetails.dart';

abstract class IHttpHelper {
  Future<HomeeScreenModel> getHomeData();
  Future<UserModel> getProfileData();
  Future<PageDetailsModel> getPageDetailsModel(int id);


  Future<SettingsModel> getSettingsData();
  Future<UserModel> login(
      String username_email ,
      String password ,
      String fcm_token ,
      String device_type ,
      );

}
