library settings_data_how_it_works_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_how_it_works_model.g.dart';
abstract class HowItWorksModel
    implements Built<HowItWorksModel, HowItWorksModelBuilder> {


  int? get id;

  String? get image;

  String? get video;

  int? get views;

  String? get title;

  String? get slug;

  String? get description;

  String? get key_words;


  HowItWorksModel get howItWorks;



  HowItWorksModel._();

  factory HowItWorksModel([Function(HowItWorksModelBuilder b) updates]) = _$HowItWorksModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HowItWorksModel.serializer, this));
  }

  static HowItWorksModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        HowItWorksModel.serializer, json.decode(jsonString));
  }

  static Serializer<HowItWorksModel> get serializer => _$howItWorksModelSerializer;
}
