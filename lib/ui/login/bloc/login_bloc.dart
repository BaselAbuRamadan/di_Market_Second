
import 'package:bloc/bloc.dart';
import 'package:di_market_second/data/repository/irepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_event.dart';
import 'login_state.dart';
var message="";
var token="";
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  IRepository _repository;

  LoginBloc(this._repository) : super(LoginState.initail());

  @override
  Stream<LoginState> mapEventToState(
      LoginEvent event,
      ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }
    if (event is ChangeStatus) {
      yield state.rebuild((b) => b
        ..isSucessGet = false
        // ..successSignup = false
      );
    }

    if (event is TryLogin) {


      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..isSucessGet = false);

        final date = await _repository.login(
          event.username_email!,
          event.password!,
          'eyeryerye',
          'ios',

        );
        print('Print_data ${date}');
        bool status = false;
        message=date.message!;
        token= date.user!.access_token!;

        if (date.status == true) {
          status = true;
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('token',token);
          print('tooooooooken :${await prefs.getString('token')}');

        } else {
          status = false;
        }


        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = message
          ..isSucessGet = status
        );
      } catch (e) {
        print('TryLogin Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = 'Please check network connection'
          ..isSucessGet = false);
      }
    }



  }
}
