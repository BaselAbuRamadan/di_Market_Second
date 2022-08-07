library settings_data_home_ads_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_home_ads_model.g.dart';
abstract class HomeAdsModel
    implements Built<HomeAdsModel, HomeAdsModelBuilder> {


  int? get id;

  String? get type;

  String? get image;

  String? get url;

  String? get status;

  String? get name;

  String? get details;


  HomeAdsModel get home_ads;



  HomeAdsModel._();

  factory HomeAdsModel([Function(HomeAdsModelBuilder b) updates]) = _$HomeAdsModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HomeAdsModel.serializer, this));
  }

  static HomeAdsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeAdsModel.serializer, json.decode(jsonString));
  }

  static Serializer<HomeAdsModel> get serializer => _$homeAdsModelSerializer;
}
