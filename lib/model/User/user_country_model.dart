library user_country_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';



part 'user_country_model.g.dart';
abstract class UserCountryModel
    implements Built<UserCountryModel, UserCountryModelBuilder> {

  int? get id;
  String? get status;
  String? get created_at;
  String? get name;

  UserCountryModel._();

  factory UserCountryModel([updates(UserCountryModelBuilder b) ]) = _$UserCountryModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(UserCountryModel.serializer, this));
  }

  static UserCountryModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserCountryModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserCountryModel> get serializer => _$userCountryModelSerializer;
}
