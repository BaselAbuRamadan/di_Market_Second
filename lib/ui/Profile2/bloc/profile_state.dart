library profile_state;

import 'package:built_value/built_value.dart';
import 'package:di_market_second/model/User/user_model.dart';
part 'profile_state.g.dart';

abstract class ProfileState implements Built<ProfileState, ProfileStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;
  bool get isSucessGet;


  UserModel? get GetUserProf;


  ProfileState._();

  factory ProfileState([updates(ProfileStateBuilder b)]) = _$ProfileState;

  factory ProfileState.initail() {
    return ProfileState((b) => b
      ..error = ""
      ..isLoading = false
      ..isSucessGet = false
      ..GetUserProf = null
    );
  }
}
