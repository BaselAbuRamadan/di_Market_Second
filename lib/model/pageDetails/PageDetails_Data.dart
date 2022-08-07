library PageDetails_Data;
import 'dart:convert';

import 'package:di_market_second/model/User/user_country_model.dart';
import 'package:di_market_second/model/User/user_nationality_model.dart';
import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'PageDetails_Data.g.dart';

abstract class PageDetailsDataModel
    implements Built<PageDetailsDataModel, PageDetailsDataModelBuilder> {


  int? get id;
  String? get image;
  String? get video;
  String? get views;
  String? get title;
  String? get slug;
  String? get description;
  String? get key_words;


  PageDetailsDataModel._();

  factory PageDetailsDataModel([updates(PageDetailsDataModelBuilder b) ]) = _$PageDetailsDataModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PageDetailsDataModel.serializer, this));
  }

  static PageDetailsDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PageDetailsDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<PageDetailsDataModel> get serializer => _$pageDetailsDataModelSerializer;
}
