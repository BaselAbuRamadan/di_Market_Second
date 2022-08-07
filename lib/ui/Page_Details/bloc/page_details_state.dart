library page_details_state;

import 'package:built_value/built_value.dart';

import '../../../model/pageDetails/pageDetails.dart';
part 'page_details_state.g.dart';

abstract class PageDetailsState implements Built<PageDetailsState, PageDetailsStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;
  bool get isSucessGet;


  PageDetailsModel? get GetPageDetails;


  PageDetailsState._();

  factory PageDetailsState([updates(PageDetailsStateBuilder b)]) = _$PageDetailsState;

  factory PageDetailsState.initail() {
    return PageDetailsState((b) => b
      ..error = ""
      ..isLoading = false
      ..isSucessGet = false
      ..GetPageDetails = null
    );
  }
}
