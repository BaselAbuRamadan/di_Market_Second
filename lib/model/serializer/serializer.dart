library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:di_market_second/model/Settings/settings_data_privacy_model.dart';
import 'package:di_market_second/model/Settings/settings_model.dart';
import 'package:di_market_second/model/Settings/settings_data_model.dart';
import 'package:di_market_second/model/Settings/settings_data_inside_ads_model.dart';
import 'package:di_market_second/model/Settings/settings_data_home_ads_model.dart';
import 'package:di_market_second/model/Settings/settings_data_countries_model.dart';
import 'package:di_market_second/model/Settings/settings_data_how_it_works_model.dart';
import 'package:di_market_second/model/Settings/settings_data_about_us_model.dart';
import 'package:di_market_second/model/HomeScreen/home_Inside_Ads.dart';
import 'package:di_market_second/model/HomeScreen/home_Campaigns_Available.dart';
import 'package:di_market_second/model/HomeScreen/home_Campaings_Soon.dart';
import 'package:di_market_second/model/HomeScreen/homeScreen.dart';

import '../User/user_country_model.dart';
import '../User/user_data_model.dart';
import '../User/user_model.dart';
import '../User/user_nationality_model.dart';
import '../pageDetails/PageDetails_Data.dart';
import '../pageDetails/pageDetails.dart';



part 'serializer.g.dart';

@SerializersFor([

  SettingsModel,
  SettingsDataModel,
  HowItWorksModel,
  AboutUsModel,
  PrivacyModel,
  InsideAdsModel,
  HomeAdsModel,
  CountriesModel,
  HomeeScreenModel,
  HomeInsideAdsModel,
  HomeCampaignsSoonModel,
  HomeCampaignsAvailableModel,
  UserDataModel,
  UserModel,
  UserCountryModel,
  UserNationalityModel,
  PageDetailsModel,
  PageDetailsDataModel

])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(InsideAdsModel),
        ],
      )),
          () => ListBuilder<InsideAdsModel>())


  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(HomeAdsModel),
        ],
      )),
          () => ListBuilder<HomeAdsModel>())


  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(CountriesModel),
        ],
      )),
          () => ListBuilder<CountriesModel>())



  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(HomeInsideAdsModel),
        ],
      )),
          () => ListBuilder<HomeInsideAdsModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(HomeeScreenModel),
        ],
      )),
          () => ListBuilder<HomeeScreenModel>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(CountriesModel),
        ],
      )),
          () => ListBuilder<CountriesModel>())



  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(HomeCampaignsSoonModel),
        ],
      )),
          () => ListBuilder<HomeCampaignsSoonModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(HomeCampaignsAvailableModel),
        ],
      )),
          () => ListBuilder<HomeCampaignsAvailableModel>())



)


    .build();


