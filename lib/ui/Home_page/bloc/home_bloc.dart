import 'package:bloc/bloc.dart';

import '../../../data/repository/irepository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRepository _repository;

  HomeBloc(this._repository) : super(HomeState.initail());
  @override
  HomeState get initialState => HomeState.initail();


  Stream<HomeState> mapEventToState(
      HomeEvent event,
      ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }

    /*** GetSliders ***/
    if (event is GetHomeData) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..isSucessGet = false
          ..GetDataHome = null);

        final slidersData = await _repository.getHomeData();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..isSucessGet = true
          ..GetDataHome.replace(slidersData));
      } catch (e) {
        print('profile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..isSucessGet = false
          ..error = "Please check network connection"
          ..GetDataHome = null);
      }
    }



    // if (event is MyCart) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..myCards = null);
    //
    //     final carts = await _repository.getMyCart();
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..myCards.replace(carts));
    //   } catch (e) {
    //     print('getMyCart Error $e');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = "Something went wrong"
    //       ..myCards = null);
    //   }
    // }
  }
}
