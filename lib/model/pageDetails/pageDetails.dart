library pageDetails;
import 'dart:convert';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'PageDetails_Data.dart';



part 'pageDetails.g.dart';
abstract class PageDetailsModel
    implements Built<PageDetailsModel, PageDetailsModelBuilder> {


  String? get message;

  bool? get status;

  int? get code;


  PageDetailsDataModel? get page;



  PageDetailsModel._();
  factory PageDetailsModel([updates(PageDetailsModelBuilder b) ]) = _$PageDetailsModel;



  String toJson() {
    return json
        .encode(serializers.serializeWith(PageDetailsModel.serializer, this));
  }

  static PageDetailsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PageDetailsModel.serializer, json.decode(jsonString));
  }

  static Serializer<PageDetailsModel> get serializer => _$pageDetailsModelSerializer;
}
