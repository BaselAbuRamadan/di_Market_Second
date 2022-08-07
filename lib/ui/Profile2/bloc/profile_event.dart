library profile_event;
import 'package:built_value/built_value.dart';

part 'profile_event.g.dart';

abstract class ProfileEvent {}

abstract class ClearError extends ProfileEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class GetProfileData extends ProfileEvent
    implements Built<GetProfileData, GetProfileDataBuilder> {
  // fields go here
  GetProfileData._();
  factory GetProfileData([updates(GetProfileDataBuilder b)]) = _$GetProfileData;
}