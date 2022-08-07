library settings_data_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_inside_ads_model.dart';
import 'package:di_market_second/model/Settings/settings_data_home_ads_model.dart';
import 'package:di_market_second/model/Settings/settings_data_countries_model.dart';
import 'package:di_market_second/model/Settings/settings_data_how_it_works_model.dart';
import 'package:di_market_second/model/Settings/settings_data_about_us_model.dart';
import 'package:di_market_second/model/Settings/settings_data_privacy_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_model.g.dart';
abstract class SettingsDataModel
    implements Built<SettingsDataModel, SettingsDataModelBuilder> {


  int? get id;

  String? get url;

  String? get logo;

  String? get app_store_url;

  String? get play_store_url;



  String? get info_email;

  String? get mobile;

  String? get phone;

  String? get facebook;

  String? get twitter;

  String? get linked_in;


  String? get instagram;

  String? get whatsapp;

  String? get latitude;

  String? get longitude;

  String? get image;

  int? get show_ads;


  int? get closing_soon_percent;

  int? get quiz_questions_num;

  int? get points_for_every_share;

  int? get points_start_for_quiz;


  AboutUsModel get aboutUs;

  PrivacyModel get privacy;

  HowItWorksModel get howItWorks;



  BuiltList<CountriesModel> get countries;

  BuiltList<HomeAdsModel> get home_ads;

  BuiltList<InsideAdsModel> get inside_ads;



  String? get title;

  String? get address;

  String? get description;

  String? get welcome_msg;


  SettingsDataModel._();

  factory SettingsDataModel([Function(SettingsDataModelBuilder b) updates]) = _$SettingsDataModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SettingsDataModel.serializer, this));
  }

  static SettingsDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SettingsDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<SettingsDataModel> get serializer => _$settingsDataModelSerializer;
}
