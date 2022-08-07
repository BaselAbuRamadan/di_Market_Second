library home_Campaings_Soon;
import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/serializer/serializer.dart';

part 'home_Campaings_Soon.g.dart';
abstract class HomeCampaignsSoonModel implements Built<HomeCampaignsSoonModel, HomeCampaignsSoonModelBuilder> {
  // fields go here

  int? get id;

  int? get price;

  int? get discount;

  String? get campaign_image;


  String? get prize_image;

  String? get draw_date;


  int? get buying_allow;


  int? get solid_count;


  int? get sell_perecent;

  int? get winners_count;


  String? get status;

  String? get created_at;

  int? get is_favorite;

  String? get campaign_title;

  String? get campaign_details;


  String? get prize_title;

  String? get prize_details;


  HomeCampaignsSoonModel._();

  factory HomeCampaignsSoonModel([Function(HomeCampaignsSoonModelBuilder b) updates]) = _$HomeCampaignsSoonModel;

  String toJson() {
    return json.encode(serializers.serializeWith(HomeCampaignsSoonModel.serializer, this));
  }

  static HomeCampaignsSoonModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeCampaignsSoonModel.serializer, json.decode(jsonString));
  }

  static Serializer<HomeCampaignsSoonModel> get serializer => _$homeCampaignsSoonModelSerializer;
}
