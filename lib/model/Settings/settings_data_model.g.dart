// GENERATED CODE - DO NOT MODIFY BY HAND

part of settings_data_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsDataModel> _$settingsDataModelSerializer =
    new _$SettingsDataModelSerializer();

class _$SettingsDataModelSerializer
    implements StructuredSerializer<SettingsDataModel> {
  @override
  final Iterable<Type> types = const [SettingsDataModel, _$SettingsDataModel];
  @override
  final String wireName = 'SettingsDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SettingsDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'aboutUs',
      serializers.serialize(object.aboutUs,
          specifiedType: const FullType(AboutUsModel)),
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(PrivacyModel)),
      'howItWorks',
      serializers.serialize(object.howItWorks,
          specifiedType: const FullType(HowItWorksModel)),
      'countries',
      serializers.serialize(object.countries,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CountriesModel)])),
      'home_ads',
      serializers.serialize(object.home_ads,
          specifiedType:
              const FullType(BuiltList, const [const FullType(HomeAdsModel)])),
      'inside_ads',
      serializers.serialize(object.inside_ads,
          specifiedType: const FullType(
              BuiltList, const [const FullType(InsideAdsModel)])),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.app_store_url;
    if (value != null) {
      result
        ..add('app_store_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.play_store_url;
    if (value != null) {
      result
        ..add('play_store_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info_email;
    if (value != null) {
      result
        ..add('info_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobile;
    if (value != null) {
      result
        ..add('mobile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facebook;
    if (value != null) {
      result
        ..add('facebook')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitter;
    if (value != null) {
      result
        ..add('twitter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linked_in;
    if (value != null) {
      result
        ..add('linked_in')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagram;
    if (value != null) {
      result
        ..add('instagram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.whatsapp;
    if (value != null) {
      result
        ..add('whatsapp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.show_ads;
    if (value != null) {
      result
        ..add('show_ads')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.closing_soon_percent;
    if (value != null) {
      result
        ..add('closing_soon_percent')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quiz_questions_num;
    if (value != null) {
      result
        ..add('quiz_questions_num')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.points_for_every_share;
    if (value != null) {
      result
        ..add('points_for_every_share')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.points_start_for_quiz;
    if (value != null) {
      result
        ..add('points_start_for_quiz')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.welcome_msg;
    if (value != null) {
      result
        ..add('welcome_msg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SettingsDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'app_store_url':
          result.app_store_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'play_store_url':
          result.play_store_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info_email':
          result.info_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'facebook':
          result.facebook = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitter':
          result.twitter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linked_in':
          result.linked_in = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagram':
          result.instagram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'show_ads':
          result.show_ads = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'closing_soon_percent':
          result.closing_soon_percent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'quiz_questions_num':
          result.quiz_questions_num = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'points_for_every_share':
          result.points_for_every_share = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'points_start_for_quiz':
          result.points_start_for_quiz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'aboutUs':
          result.aboutUs.replace(serializers.deserialize(value,
              specifiedType: const FullType(AboutUsModel))! as AboutUsModel);
          break;
        case 'privacy':
          result.privacy.replace(serializers.deserialize(value,
              specifiedType: const FullType(PrivacyModel))! as PrivacyModel);
          break;
        case 'howItWorks':
          result.howItWorks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(HowItWorksModel))!
              as HowItWorksModel);
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountriesModel)]))!
              as BuiltList<Object?>);
          break;
        case 'home_ads':
          result.home_ads.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HomeAdsModel)]))!
              as BuiltList<Object?>);
          break;
        case 'inside_ads':
          result.inside_ads.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(InsideAdsModel)]))!
              as BuiltList<Object?>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'welcome_msg':
          result.welcome_msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SettingsDataModel extends SettingsDataModel {
  @override
  final int? id;
  @override
  final String? url;
  @override
  final String? logo;
  @override
  final String? app_store_url;
  @override
  final String? play_store_url;
  @override
  final String? info_email;
  @override
  final String? mobile;
  @override
  final String? phone;
  @override
  final String? facebook;
  @override
  final String? twitter;
  @override
  final String? linked_in;
  @override
  final String? instagram;
  @override
  final String? whatsapp;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? image;
  @override
  final int? show_ads;
  @override
  final int? closing_soon_percent;
  @override
  final int? quiz_questions_num;
  @override
  final int? points_for_every_share;
  @override
  final int? points_start_for_quiz;
  @override
  final AboutUsModel aboutUs;
  @override
  final PrivacyModel privacy;
  @override
  final HowItWorksModel howItWorks;
  @override
  final BuiltList<CountriesModel> countries;
  @override
  final BuiltList<HomeAdsModel> home_ads;
  @override
  final BuiltList<InsideAdsModel> inside_ads;
  @override
  final String? title;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? welcome_msg;

  factory _$SettingsDataModel(
          [void Function(SettingsDataModelBuilder)? updates]) =>
      (new SettingsDataModelBuilder()..update(updates)).build();

  _$SettingsDataModel._(
      {this.id,
      this.url,
      this.logo,
      this.app_store_url,
      this.play_store_url,
      this.info_email,
      this.mobile,
      this.phone,
      this.facebook,
      this.twitter,
      this.linked_in,
      this.instagram,
      this.whatsapp,
      this.latitude,
      this.longitude,
      this.image,
      this.show_ads,
      this.closing_soon_percent,
      this.quiz_questions_num,
      this.points_for_every_share,
      this.points_start_for_quiz,
      required this.aboutUs,
      required this.privacy,
      required this.howItWorks,
      required this.countries,
      required this.home_ads,
      required this.inside_ads,
      this.title,
      this.address,
      this.description,
      this.welcome_msg})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        aboutUs, 'SettingsDataModel', 'aboutUs');
    BuiltValueNullFieldError.checkNotNull(
        privacy, 'SettingsDataModel', 'privacy');
    BuiltValueNullFieldError.checkNotNull(
        howItWorks, 'SettingsDataModel', 'howItWorks');
    BuiltValueNullFieldError.checkNotNull(
        countries, 'SettingsDataModel', 'countries');
    BuiltValueNullFieldError.checkNotNull(
        home_ads, 'SettingsDataModel', 'home_ads');
    BuiltValueNullFieldError.checkNotNull(
        inside_ads, 'SettingsDataModel', 'inside_ads');
  }

  @override
  SettingsDataModel rebuild(void Function(SettingsDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsDataModelBuilder toBuilder() =>
      new SettingsDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsDataModel &&
        id == other.id &&
        url == other.url &&
        logo == other.logo &&
        app_store_url == other.app_store_url &&
        play_store_url == other.play_store_url &&
        info_email == other.info_email &&
        mobile == other.mobile &&
        phone == other.phone &&
        facebook == other.facebook &&
        twitter == other.twitter &&
        linked_in == other.linked_in &&
        instagram == other.instagram &&
        whatsapp == other.whatsapp &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        image == other.image &&
        show_ads == other.show_ads &&
        closing_soon_percent == other.closing_soon_percent &&
        quiz_questions_num == other.quiz_questions_num &&
        points_for_every_share == other.points_for_every_share &&
        points_start_for_quiz == other.points_start_for_quiz &&
        aboutUs == other.aboutUs &&
        privacy == other.privacy &&
        howItWorks == other.howItWorks &&
        countries == other.countries &&
        home_ads == other.home_ads &&
        inside_ads == other.inside_ads &&
        title == other.title &&
        address == other.address &&
        description == other.description &&
        welcome_msg == other.welcome_msg;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), url.hashCode), logo.hashCode), app_store_url.hashCode), play_store_url.hashCode), info_email.hashCode), mobile.hashCode), phone.hashCode), facebook.hashCode), twitter.hashCode), linked_in.hashCode), instagram.hashCode),
                                                                                whatsapp.hashCode),
                                                                            latitude.hashCode),
                                                                        longitude.hashCode),
                                                                    image.hashCode),
                                                                show_ads.hashCode),
                                                            closing_soon_percent.hashCode),
                                                        quiz_questions_num.hashCode),
                                                    points_for_every_share.hashCode),
                                                points_start_for_quiz.hashCode),
                                            aboutUs.hashCode),
                                        privacy.hashCode),
                                    howItWorks.hashCode),
                                countries.hashCode),
                            home_ads.hashCode),
                        inside_ads.hashCode),
                    title.hashCode),
                address.hashCode),
            description.hashCode),
        welcome_msg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsDataModel')
          ..add('id', id)
          ..add('url', url)
          ..add('logo', logo)
          ..add('app_store_url', app_store_url)
          ..add('play_store_url', play_store_url)
          ..add('info_email', info_email)
          ..add('mobile', mobile)
          ..add('phone', phone)
          ..add('facebook', facebook)
          ..add('twitter', twitter)
          ..add('linked_in', linked_in)
          ..add('instagram', instagram)
          ..add('whatsapp', whatsapp)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('image', image)
          ..add('show_ads', show_ads)
          ..add('closing_soon_percent', closing_soon_percent)
          ..add('quiz_questions_num', quiz_questions_num)
          ..add('points_for_every_share', points_for_every_share)
          ..add('points_start_for_quiz', points_start_for_quiz)
          ..add('aboutUs', aboutUs)
          ..add('privacy', privacy)
          ..add('howItWorks', howItWorks)
          ..add('countries', countries)
          ..add('home_ads', home_ads)
          ..add('inside_ads', inside_ads)
          ..add('title', title)
          ..add('address', address)
          ..add('description', description)
          ..add('welcome_msg', welcome_msg))
        .toString();
  }
}

class SettingsDataModelBuilder
    implements Builder<SettingsDataModel, SettingsDataModelBuilder> {
  _$SettingsDataModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _app_store_url;
  String? get app_store_url => _$this._app_store_url;
  set app_store_url(String? app_store_url) =>
      _$this._app_store_url = app_store_url;

  String? _play_store_url;
  String? get play_store_url => _$this._play_store_url;
  set play_store_url(String? play_store_url) =>
      _$this._play_store_url = play_store_url;

  String? _info_email;
  String? get info_email => _$this._info_email;
  set info_email(String? info_email) => _$this._info_email = info_email;

  String? _mobile;
  String? get mobile => _$this._mobile;
  set mobile(String? mobile) => _$this._mobile = mobile;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _facebook;
  String? get facebook => _$this._facebook;
  set facebook(String? facebook) => _$this._facebook = facebook;

  String? _twitter;
  String? get twitter => _$this._twitter;
  set twitter(String? twitter) => _$this._twitter = twitter;

  String? _linked_in;
  String? get linked_in => _$this._linked_in;
  set linked_in(String? linked_in) => _$this._linked_in = linked_in;

  String? _instagram;
  String? get instagram => _$this._instagram;
  set instagram(String? instagram) => _$this._instagram = instagram;

  String? _whatsapp;
  String? get whatsapp => _$this._whatsapp;
  set whatsapp(String? whatsapp) => _$this._whatsapp = whatsapp;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _show_ads;
  int? get show_ads => _$this._show_ads;
  set show_ads(int? show_ads) => _$this._show_ads = show_ads;

  int? _closing_soon_percent;
  int? get closing_soon_percent => _$this._closing_soon_percent;
  set closing_soon_percent(int? closing_soon_percent) =>
      _$this._closing_soon_percent = closing_soon_percent;

  int? _quiz_questions_num;
  int? get quiz_questions_num => _$this._quiz_questions_num;
  set quiz_questions_num(int? quiz_questions_num) =>
      _$this._quiz_questions_num = quiz_questions_num;

  int? _points_for_every_share;
  int? get points_for_every_share => _$this._points_for_every_share;
  set points_for_every_share(int? points_for_every_share) =>
      _$this._points_for_every_share = points_for_every_share;

  int? _points_start_for_quiz;
  int? get points_start_for_quiz => _$this._points_start_for_quiz;
  set points_start_for_quiz(int? points_start_for_quiz) =>
      _$this._points_start_for_quiz = points_start_for_quiz;

  AboutUsModelBuilder? _aboutUs;
  AboutUsModelBuilder get aboutUs =>
      _$this._aboutUs ??= new AboutUsModelBuilder();
  set aboutUs(AboutUsModelBuilder? aboutUs) => _$this._aboutUs = aboutUs;

  PrivacyModelBuilder? _privacy;
  PrivacyModelBuilder get privacy =>
      _$this._privacy ??= new PrivacyModelBuilder();
  set privacy(PrivacyModelBuilder? privacy) => _$this._privacy = privacy;

  HowItWorksModelBuilder? _howItWorks;
  HowItWorksModelBuilder get howItWorks =>
      _$this._howItWorks ??= new HowItWorksModelBuilder();
  set howItWorks(HowItWorksModelBuilder? howItWorks) =>
      _$this._howItWorks = howItWorks;

  ListBuilder<CountriesModel>? _countries;
  ListBuilder<CountriesModel> get countries =>
      _$this._countries ??= new ListBuilder<CountriesModel>();
  set countries(ListBuilder<CountriesModel>? countries) =>
      _$this._countries = countries;

  ListBuilder<HomeAdsModel>? _home_ads;
  ListBuilder<HomeAdsModel> get home_ads =>
      _$this._home_ads ??= new ListBuilder<HomeAdsModel>();
  set home_ads(ListBuilder<HomeAdsModel>? home_ads) =>
      _$this._home_ads = home_ads;

  ListBuilder<InsideAdsModel>? _inside_ads;
  ListBuilder<InsideAdsModel> get inside_ads =>
      _$this._inside_ads ??= new ListBuilder<InsideAdsModel>();
  set inside_ads(ListBuilder<InsideAdsModel>? inside_ads) =>
      _$this._inside_ads = inside_ads;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _welcome_msg;
  String? get welcome_msg => _$this._welcome_msg;
  set welcome_msg(String? welcome_msg) => _$this._welcome_msg = welcome_msg;

  SettingsDataModelBuilder();

  SettingsDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _logo = $v.logo;
      _app_store_url = $v.app_store_url;
      _play_store_url = $v.play_store_url;
      _info_email = $v.info_email;
      _mobile = $v.mobile;
      _phone = $v.phone;
      _facebook = $v.facebook;
      _twitter = $v.twitter;
      _linked_in = $v.linked_in;
      _instagram = $v.instagram;
      _whatsapp = $v.whatsapp;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _image = $v.image;
      _show_ads = $v.show_ads;
      _closing_soon_percent = $v.closing_soon_percent;
      _quiz_questions_num = $v.quiz_questions_num;
      _points_for_every_share = $v.points_for_every_share;
      _points_start_for_quiz = $v.points_start_for_quiz;
      _aboutUs = $v.aboutUs.toBuilder();
      _privacy = $v.privacy.toBuilder();
      _howItWorks = $v.howItWorks.toBuilder();
      _countries = $v.countries.toBuilder();
      _home_ads = $v.home_ads.toBuilder();
      _inside_ads = $v.inside_ads.toBuilder();
      _title = $v.title;
      _address = $v.address;
      _description = $v.description;
      _welcome_msg = $v.welcome_msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsDataModel;
  }

  @override
  void update(void Function(SettingsDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsDataModel build() {
    _$SettingsDataModel _$result;
    try {
      _$result = _$v ??
          new _$SettingsDataModel._(
              id: id,
              url: url,
              logo: logo,
              app_store_url: app_store_url,
              play_store_url: play_store_url,
              info_email: info_email,
              mobile: mobile,
              phone: phone,
              facebook: facebook,
              twitter: twitter,
              linked_in: linked_in,
              instagram: instagram,
              whatsapp: whatsapp,
              latitude: latitude,
              longitude: longitude,
              image: image,
              show_ads: show_ads,
              closing_soon_percent: closing_soon_percent,
              quiz_questions_num: quiz_questions_num,
              points_for_every_share: points_for_every_share,
              points_start_for_quiz: points_start_for_quiz,
              aboutUs: aboutUs.build(),
              privacy: privacy.build(),
              howItWorks: howItWorks.build(),
              countries: countries.build(),
              home_ads: home_ads.build(),
              inside_ads: inside_ads.build(),
              title: title,
              address: address,
              description: description,
              welcome_msg: welcome_msg);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aboutUs';
        aboutUs.build();
        _$failedField = 'privacy';
        privacy.build();
        _$failedField = 'howItWorks';
        howItWorks.build();
        _$failedField = 'countries';
        countries.build();
        _$failedField = 'home_ads';
        home_ads.build();
        _$failedField = 'inside_ads';
        inside_ads.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SettingsDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
