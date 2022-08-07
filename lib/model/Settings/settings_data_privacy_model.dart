library settings_data_privacy_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_privacy_model.g.dart';
abstract class PrivacyModel
    implements Built<PrivacyModel, PrivacyModelBuilder> {


  int? get id;

  String? get image;

  String? get video;

  int? get views;

  String? get title;

  String? get slug;

  String? get description;

  String? get key_words;


  PrivacyModel get privacy;



  PrivacyModel._();

  factory PrivacyModel([Function(PrivacyModelBuilder b) updates]) = _$PrivacyModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PrivacyModel.serializer, this));
  }

  static PrivacyModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PrivacyModel.serializer, json.decode(jsonString));
  }

  static Serializer<PrivacyModel> get serializer => _$privacyModelSerializer;
}
