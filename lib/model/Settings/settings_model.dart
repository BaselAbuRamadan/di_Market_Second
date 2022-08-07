library settings_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_model.g.dart';
abstract class SettingsModel
    implements Built<SettingsModel, SettingsModelBuilder> {


 String? get message;

 bool? get status;

 int? get code;


 SettingsDataModel get settings;



 SettingsModel._();

  factory SettingsModel([Function(SettingsModelBuilder b) updates]) = _$SettingsModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SettingsModel.serializer, this));
  }

  static SettingsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SettingsModel.serializer, json.decode(jsonString));
  }

  static Serializer<SettingsModel> get serializer => _$settingsModelSerializer;
}
