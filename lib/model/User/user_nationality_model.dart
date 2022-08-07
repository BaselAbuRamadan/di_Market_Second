library user_nationality_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';



part 'user_nationality_model.g.dart';
abstract class UserNationalityModel
    implements Built<UserNationalityModel, UserNationalityModelBuilder> {

  int? get id;
  String? get status;
  String? get created_at;

  String? get name;





  UserNationalityModel._();

  factory UserNationalityModel([updates(UserNationalityModelBuilder b) ]) = _$UserNationalityModel;



  String toJson() {
    return json
        .encode(serializers.serializeWith(UserNationalityModel.serializer, this));
  }

  static UserNationalityModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserNationalityModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserNationalityModel> get serializer => _$userNationalityModelSerializer;
}
