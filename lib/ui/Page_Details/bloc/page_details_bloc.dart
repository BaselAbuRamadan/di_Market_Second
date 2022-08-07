import 'package:bloc/bloc.dart';
import '../../../data/repository/irepository.dart';
import 'page_details_event.dart';
import 'page_details_state.dart';

class PageDetailsBloc extends Bloc<PageDetailsEvent, PageDetailsState> {
  IRepository _repository;

  PageDetailsBloc(this._repository) : super(PageDetailsState.initail());
  @override
  PageDetailsState get initialState => PageDetailsState.initail();


  Stream<PageDetailsState> mapEventToState(
      PageDetailsEvent event,
      ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }

    /*** GetSliders ***/
    if (event is GetPageDetails) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..isSucessGet = false
          ..GetPageDetails = null);

        final pageData = await _repository.getPageDetailsModel(event.PageID!);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..isSucessGet = true
          ..GetPageDetails.replace(pageData));
      } catch (e) {
        print('profile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..isSucessGet = false
          ..error = "Please check network connection"
          ..GetPageDetails = null);
      }
    }




  }
}


