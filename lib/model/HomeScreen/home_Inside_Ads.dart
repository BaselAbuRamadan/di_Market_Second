library  home_Inside_Ads;
import 'dart:convert';
import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'home_Inside_Ads.g.dart';
abstract class HomeInsideAdsModel implements Built<HomeInsideAdsModel, HomeInsideAdsModelBuilder> {
  // fields go here

  int? get id;

  String? get type;

  String? get image;

  String? get url;


  String? get status;

  String? get name;

  String? get details;

  HomeInsideAdsModel._();

  factory HomeInsideAdsModel([Function(HomeInsideAdsModelBuilder b) updates]) = _$HomeInsideAdsModel;

  String toJson() {
    return json.encode(serializers.serializeWith(HomeInsideAdsModel.serializer, this));
  }

  static HomeInsideAdsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeInsideAdsModel.serializer, json.decode(jsonString));
  }

  static Serializer<HomeInsideAdsModel> get serializer => _$homeInsideAdsModelSerializer;
}
