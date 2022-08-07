library user_model;
import 'dart:convert';

import 'package:di_market_second/model/User/user_data_model.dart';
import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'user_model.dart';



part 'user_model.g.dart';
abstract class UserModel
    implements Built<UserModel, UserModelBuilder> {


  String? get message;

  bool? get status;

  int? get code;


  UserDataModel? get user;



  UserModel._();
  factory UserModel([updates(UserModelBuilder b) ]) = _$UserModel;



  String toJson() {
    return json
        .encode(serializers.serializeWith(UserModel.serializer, this));
  }

  static UserModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserModel> get serializer => _$userModelSerializer;
}
