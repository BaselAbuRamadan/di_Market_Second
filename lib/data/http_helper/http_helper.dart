import 'dart:convert';
import 'package:di_market_second/core/Settings.dart';
import 'package:di_market_second/core/error.dart';
import 'package:di_market_second/model/User/user_model.dart';
import 'package:di_market_second/ui/login/bloc/login_bloc.dart';
import 'dart:io';
import 'dart:core';
import 'package:path/path.dart';

import 'package:di_market_second/model/serializer/serializer.dart';
import 'package:di_market_second/model/Settings/settings_model.dart';
import 'package:di_market_second/model/HomeScreen/homeScreen.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import '../../model/pageDetails/pageDetails.dart';
import 'Ihttp_helper.dart';
import 'package:http/http.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;
  var cookieJar = CookieJar();

 // var baseResponse = const<bool?>[true,false];
 //  String? baseResponse ;
  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }


  // Get data
  @override
  Future<SettingsModel> getSettingsData() async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('settings',
          options: Options(headers: {
            "Accept-Language": 'en',
            "Accept": "application/json"
          }));

      if (response.statusCode == 200) {
       final  baseResponse = serializers.deserialize(json.decode(response.data),

            specifiedType: const FullType(
              SettingsModel,
            ));

        if (baseResponse != null) {
          return baseResponse as SettingsModel;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
  @override
  Future<PageDetailsModel> getPageDetailsModel(int PageID) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('pageDetails/page_id/$PageID',
          options: Options(headers: {
            "Accept-Language": 'en',
            "Accept": "application/json"
          }));

      if (response.statusCode == 200) {
        final  baseResponse = serializers.deserialize(json.decode(response.data),

            specifiedType: const FullType(
              PageDetailsModel,
            ));

        if (baseResponse != null) {
          return baseResponse as PageDetailsModel;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<HomeeScreenModel> getHomeData() async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('homeScreen',
          options: Options(headers: {
            "Accept-Language": 'en',
            "Accept": "application/json"
          }));

      if (response.statusCode == 200) {
        final  baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType:  const FullType(
              HomeeScreenModel,
            ));

        if (baseResponse != null) {
          return baseResponse as HomeeScreenModel ;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
  Future<UserModel> getProfileData() async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get('profile',
          options: Options(headers: {
            "Authorization":'Bearer  ${token}',
            "Accept-Language": 'en',
            "Accept": "application/json"
          }));

      if (response.statusCode == 200) {
        final  baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType:  const FullType(
              UserModel,
            ));

        if (baseResponse != null) {
          return baseResponse as UserModel ;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<UserModel> login(
      String username_email ,
      String password ,
      String fcm_token ,
      String device_type ,
      ) async {
    // TODO: implement login
    try {
      final formData = {
        "username_email": username_email,
        "password": password,
        "fcm_token": fcm_token,
        "device_type": device_type,



      };

      final response = await _dio.post('loginForUsers',
          data: formData,
          options: Options(headers: {
            "Accept-Language": 'en',
            "Accept":"application/json",
            // " ContentType": 'multipart/form-data'
          })
      );
      print('login Response StatusCode ${response.statusCode}');
      print('login Response StatusCode ${response.data}');

      if (response.statusCode == 200) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType:const FullType(

                UserModel
            ));


        //   BaseResponse,
            //   [FullType(UserModel),],
            // )) as BaseResponse;




        print("implement login status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse as UserModel;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }





}
