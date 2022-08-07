library settings_data_inside_ads_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_inside_ads_model.g.dart';
abstract class InsideAdsModel
    implements Built<InsideAdsModel, InsideAdsModelBuilder> {

  int? get id;
  String? get type;
  String? get image;
  String? get url;
  String? get status;
  String? get name;
  String? get details;


  InsideAdsModel get inside_ads;



  InsideAdsModel._();

  factory InsideAdsModel([Function(InsideAdsModelBuilder b) updates]) = _$InsideAdsModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(InsideAdsModel.serializer, this));
  }

  static InsideAdsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        InsideAdsModel.serializer, json.decode(jsonString));
  }

  static Serializer<InsideAdsModel> get serializer => _$insideAdsModelSerializer;
}
