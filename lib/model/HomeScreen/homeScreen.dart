library homeScreen;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/HomeScreen/home_Inside_Ads.dart';
import 'package:di_market_second/model/HomeScreen/home_Campaigns_Available.dart';
import 'package:di_market_second/model/HomeScreen/home_Campaings_Soon.dart';

import 'package:built_collection/built_collection.dart';

part 'homeScreen.g.dart';
abstract class HomeeScreenModel
    implements Built<HomeeScreenModel, HomeeScreenModelBuilder> {
 // @nullable
 // bool get status;

 String? get message;
 // @nullable
 // int get code;
 //status

 BuiltList<HomeInsideAdsModel> get inside_ads;

 BuiltList<HomeCampaignsSoonModel> get campaigns_closing_soon;

 BuiltList<HomeCampaignsAvailableModel> get campaigns_available;


 HomeeScreenModel._();

  factory HomeeScreenModel([Function(HomeeScreenModelBuilder b) updates]) = _$HomeeScreenModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HomeeScreenModel.serializer, this));
  }

  static HomeeScreenModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeeScreenModel.serializer, json.decode(jsonString));
  }

  static Serializer<HomeeScreenModel> get serializer => _$homeeScreenModelSerializer;
}
