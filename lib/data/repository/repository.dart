import 'dart:convert';
import 'dart:io';

import 'package:di_market_second/data/http_helper/Ihttp_helper.dart';
import 'package:di_market_second/data/http_helper/http_helper.dart';
import 'package:di_market_second/data/prefs_helper/iprefs_helper.dart';
import 'package:di_market_second/model/HomeScreen/homeScreen.dart';
import 'package:di_market_second/model/Settings/settings_model.dart';
import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/User/user_model.dart';
import 'package:di_market_second/ui/Profile2/bloc/profile_event.dart';
import 'package:dio/dio.dart';
import '../../model/pageDetails/pageDetails.dart';
import '../../ui/Profile2/bloc/profile_event.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);

  @override

  @override
  Future<int> getAppLanguage() async {
    return await _iprefHelper.getAppLanguage();
  }

  @override
  Future<void> setAppLanguage(int value) async {
    await _iprefHelper.setAppLanguage(value);
  }

  @override
  Future<SettingsModel> getSettingsData() async {

    final data = await _ihttpHelper.getSettingsData();
    return data;
  }

  @override
  Future<HomeeScreenModel> getHomeData() async {

    final data = await _ihttpHelper.getHomeData();
    return data;
  }
  Future<UserModel> getProfileData() async {

    final data = await _ihttpHelper.getProfileData();
    return data;
  }
  Future<PageDetailsModel> getPageDetailsModel(
      int PageID,
      ) async{

    final data = await _ihttpHelper.getPageDetailsModel(PageID);

    return data;
  }

  Future<UserModel> login(
      String username_email ,
      String password ,
      String fcm_token ,
      String device_type ,
      ) async {
    // TODO: implement login

    final user = await _ihttpHelper.login(
      username_email,
      password,
      fcm_token,
      device_type,
    );
    // final save = await _iprefHelper.saveUser(user, user.token!,true);

    return user;
  }

  }





