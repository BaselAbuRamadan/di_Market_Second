library home_state;

import 'package:built_value/built_value.dart';
import 'package:di_market_second/model/HomeScreen/homeScreen.dart';
part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;
  bool get isSucessGet;


  HomeeScreenModel? get GetDataHome;


  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;

  factory HomeState.initail() {
    return HomeState((b) => b
      ..error = ""
      ..isLoading = false
      ..isSucessGet = false
      ..GetDataHome = null
    );
  }
}
