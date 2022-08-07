library page_details_event;
import 'package:built_value/built_value.dart';

part 'page_details_event.g.dart';

abstract class PageDetailsEvent {}

abstract class ClearError extends PageDetailsEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class GetPageDetails extends PageDetailsEvent
    implements Built<GetPageDetails, GetPageDetailsBuilder> {
   int? get PageID;
  // fields go here
  GetPageDetails._();
  factory GetPageDetails([updates(GetPageDetailsBuilder b)]) = _$GetPageDetails;
}