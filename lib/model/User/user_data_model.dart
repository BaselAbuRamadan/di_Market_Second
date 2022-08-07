library user_data_model;
import 'dart:convert';

import 'package:di_market_second/model/User/user_country_model.dart';
import 'package:di_market_second/model/User/user_nationality_model.dart';
import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'user_data_model.g.dart';

abstract class UserDataModel
    implements Built<UserDataModel, UserDataModelBuilder> {


  int? get id;
  String? get first_name;
  String? get last_name;
  String? get username;
  String? get email;
  String? get mobile;
  int? get country_id;
  int? get nationality_id;
  int? get seen_ads;
  int? get points_count;
  String? get image_profile;
  String? get remember_token;
  String? get status;
  int? get type;
  String? get created_at;
  String? get access_token;


  UserCountryModel? get country;
  UserNationalityModel? get nationality;




  UserDataModel._();

  factory UserDataModel([updates(UserDataModelBuilder b) ]) = _$UserDataModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(UserDataModel.serializer, this));
  }

  static UserDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserDataModel> get serializer => _$userDataModelSerializer;
}
