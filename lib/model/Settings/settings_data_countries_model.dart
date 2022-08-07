library settings_data_countries_model;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';


import 'package:built_collection/built_collection.dart';

part 'settings_data_countries_model.g.dart';
abstract class CountriesModel
    implements Built<CountriesModel, CountriesModelBuilder> {


  int? get id;

  String? get status;

  String? get created_at;

  String? get name;

  CountriesModel get countries;



  CountriesModel._();

  factory CountriesModel([Function(CountriesModelBuilder b) updates]) = _$CountriesModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CountriesModel.serializer, this));
  }

  static CountriesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountriesModel.serializer, json.decode(jsonString));
  }

  static Serializer<CountriesModel> get serializer => _$countriesModelSerializer;
}
