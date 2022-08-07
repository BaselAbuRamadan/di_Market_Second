library  home_Campaigns_Available;
import 'dart:convert';
import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
//
// part 'home_campaigns_available.g.dart';
part 'home_Campaigns_Available.g.dart';
abstract class HomeCampaignsAvailableModel implements Built<HomeCampaignsAvailableModel, HomeCampaignsAvailableModelBuilder> {
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


  HomeCampaignsAvailableModel._();

  factory HomeCampaignsAvailableModel([Function(HomeCampaignsAvailableModelBuilder b) updates]) = _$HomeCampaignsAvailableModel;

  String toJson() {
    return json.encode(serializers.serializeWith(HomeCampaignsAvailableModel.serializer, this));
  }

  static HomeCampaignsAvailableModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeCampaignsAvailableModel.serializer, json.decode(jsonString));
  }

  static Serializer<HomeCampaignsAvailableModel> get serializer => _$homeCampaignsAvailableModelSerializer;
}
