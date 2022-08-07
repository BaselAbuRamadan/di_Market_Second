
library login_state;

import 'dart:convert';

import 'package:di_market_second/model/User/user_model.dart';
import 'package:built_value/built_value.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  // fields go here

  String? get error;

  bool? get isLoading;

  bool? get isSucessGet;


  UserModel? get userData;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initail() {
    return LoginState((b) => b
      ..error = ""
      ..isLoading = false
      ..isSucessGet = false
      ..userData=null
    );
  }
}







