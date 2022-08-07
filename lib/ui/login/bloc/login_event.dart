

library login_event;


import 'package:built_value/built_value.dart';
part 'login_event.g.dart';

abstract class LoginEvent {}

abstract class TryLogin extends LoginEvent
    implements Built<TryLogin, TryLoginBuilder> {

  // fields go here


  String? get username_email ;


  String? get password ;


  String? get fcm_token ;

  String? get device_type ;

  TryLogin._();

  factory TryLogin([updates(TryLoginBuilder b)]) = _$TryLogin;
}

abstract class ClearError extends LoginEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class ChangeStatus extends LoginEvent
    implements Built<ChangeStatus, ChangeStatusBuilder> {
  // fields go here

  ChangeStatus._();

  factory ChangeStatus([updates(ChangeStatusBuilder b)]) = _$ChangeStatus;
}




