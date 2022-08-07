

import 'package:di_market_second/ui/Home_page/bloc/home_bloc.dart';
import 'package:di_market_second/ui/Page_Details/bloc/page_details_bloc.dart';
import 'package:di_market_second/ui/login/bloc/login_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// import 'app/bloc/app_bloc.dart';
import 'core/constent.dart';
import 'data/http_helper/Ihttp_helper.dart';
import 'data/http_helper/http_helper.dart';
import 'data/prefs_helper/iprefs_helper.dart';
import 'data/prefs_helper/prefs_helper.dart';
import 'data/repository/irepository.dart';
import 'data/repository/repository.dart';
final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)
  ))));

  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));

  /// AppBloc


  // sl.registerFactory(() => LangugeBloc(sl()));
  // sl.registerFactory(() => AppBloc(sl()));
  //
  sl.registerFactory(() => HomeBloc(sl()));
  // sl.registerFactory(() => HowItWorksBloc(sl()));
  // sl.registerFactory(() => About_usBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl()));
  sl.registerFactory(() => PageDetailsBloc(sl()));
  // sl.registerFactory(() => UserProfileBloc(sl()));
  // sl.registerFactory(() => SignUpBloc(sl()));
  // sl.registerFactory(() => ForgetPasswordBloc(sl()));



  ///EditProfileBloc



}
