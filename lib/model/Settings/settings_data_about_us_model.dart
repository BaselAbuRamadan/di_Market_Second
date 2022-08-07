library settings_data_about_us_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_about_us_model.g.dart';
abstract class AboutUsModel
    implements Built<AboutUsModel, AboutUsModelBuilder> {


  int? get id;

  String? get image;

  String? get video;

  int? get views;

  String? get title;

  String? get slug;

  String? get description;

  String? get key_words;


  AboutUsModel get aboutUs;



  AboutUsModel._();

  factory AboutUsModel([Function(AboutUsModelBuilder b) updates]) = _$AboutUsModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AboutUsModel.serializer, this));
  }

  static AboutUsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AboutUsModel.serializer, json.decode(jsonString));
  }

  static Serializer<AboutUsModel> get serializer => _$aboutUsModelSerializer;
}
