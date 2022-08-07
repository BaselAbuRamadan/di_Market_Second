import 'package:bloc/bloc.dart';
import '../../../data/repository/irepository.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  IRepository _repository;

  ProfileBloc(this._repository) : super(ProfileState.initail());
  @override
  ProfileState get initialState => ProfileState.initail();


  Stream<ProfileState> mapEventToState(
      ProfileEvent event,
      ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }

    /*** GetSliders ***/
    if (event is GetProfileData) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..isSucessGet = false
          ..GetUserProf = null);

        final slidersData = await _repository.getProfileData();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..isSucessGet = true
          ..GetUserProf.replace(slidersData));
      } catch (e) {
        print('profile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..isSucessGet = false
          ..error = "Please check network connection"
          ..GetUserProf = null);
      }
    }




  }
}


