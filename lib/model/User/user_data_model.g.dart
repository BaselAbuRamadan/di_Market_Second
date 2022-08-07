// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_data_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserDataModel> _$userDataModelSerializer =
    new _$UserDataModelSerializer();

class _$UserDataModelSerializer implements StructuredSerializer<UserDataModel> {
  @override
  final Iterable<Type> types = const [UserDataModel, _$UserDataModel];
  @override
  final String wireName = 'UserDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.first_name;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last_name;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.country_id;
    if (value != null) {
      result
        ..add('country_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nationality_id;
    if (value != null) {
      result
        ..add('nationality_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.seen_ads;
    if (value != null) {
      result
        ..add('seen_ads')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.points_count;
    if (value != null) {
      result
        ..add('points_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image_profile;
    if (value != null) {
      result
        ..add('image_profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.remember_token;
    if (value != null) {
      result
        ..add('remember_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.access_token;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserCountryModel)));
    }
    value = object.nationality;
    if (value != null) {
      result
        ..add('nationality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserNationalityModel)));
    }
    return result;
  }

  @override
  UserDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataModelBuilder();

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
        case 'first_name':
          result.first_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.last_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country_id':
          result.country_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nationality_id':
          result.nationality_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'seen_ads':
          result.seen_ads = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'points_count':
          result.points_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image_profile':
          result.image_profile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'remember_token':
          result.remember_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserCountryModel))!
              as UserCountryModel);
          break;
        case 'nationality':
          result.nationality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserNationalityModel))!
              as UserNationalityModel);
          break;
      }
    }

    return result.build();
  }
}

class _$UserDataModel extends UserDataModel {
  @override
  final int? id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? mobile;
  @override
  final int? country_id;
  @override
  final int? nationality_id;
  @override
  final int? seen_ads;
  @override
  final int? points_count;
  @override
  final String? image_profile;
  @override
  final String? remember_token;
  @override
  final String? status;
  @override
  final int? type;
  @override
  final String? created_at;
  @override
  final String? access_token;
  @override
  final UserCountryModel? country;
  @override
  final UserNationalityModel? nationality;

  factory _$UserDataModel([void Function(UserDataModelBuilder)? updates]) =>
      (new UserDataModelBuilder()..update(updates)).build();

  _$UserDataModel._(
      {this.id,
      this.first_name,
      this.last_name,
      this.username,
      this.email,
      this.mobile,
      this.country_id,
      this.nationality_id,
      this.seen_ads,
      this.points_count,
      this.image_profile,
      this.remember_token,
      this.status,
      this.type,
      this.created_at,
      this.access_token,
      this.country,
      this.nationality})
      : super._();

  @override
  UserDataModel rebuild(void Function(UserDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataModelBuilder toBuilder() => new UserDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataModel &&
        id == other.id &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        username == other.username &&
        email == other.email &&
        mobile == other.mobile &&
        country_id == other.country_id &&
        nationality_id == other.nationality_id &&
        seen_ads == other.seen_ads &&
        points_count == other.points_count &&
        image_profile == other.image_profile &&
        remember_token == other.remember_token &&
        status == other.status &&
        type == other.type &&
        created_at == other.created_at &&
        access_token == other.access_token &&
        country == other.country &&
        nationality == other.nationality;
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
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        first_name
                                                                            .hashCode),
                                                                    last_name
                                                                        .hashCode),
                                                                username
                                                                    .hashCode),
                                                            email.hashCode),
                                                        mobile.hashCode),
                                                    country_id.hashCode),
                                                nationality_id.hashCode),
                                            seen_ads.hashCode),
                                        points_count.hashCode),
                                    image_profile.hashCode),
                                remember_token.hashCode),
                            status.hashCode),
                        type.hashCode),
                    created_at.hashCode),
                access_token.hashCode),
            country.hashCode),
        nationality.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserDataModel')
          ..add('id', id)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('username', username)
          ..add('email', email)
          ..add('mobile', mobile)
          ..add('country_id', country_id)
          ..add('nationality_id', nationality_id)
          ..add('seen_ads', seen_ads)
          ..add('points_count', points_count)
          ..add('image_profile', image_profile)
          ..add('remember_token', remember_token)
          ..add('status', status)
          ..add('type', type)
          ..add('created_at', created_at)
          ..add('access_token', access_token)
          ..add('country', country)
          ..add('nationality', nationality))
        .toString();
  }
}

class UserDataModelBuilder
    implements Builder<UserDataModel, UserDataModelBuilder> {
  _$UserDataModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _first_name;
  String? get first_name => _$this._first_name;
  set first_name(String? first_name) => _$this._first_name = first_name;

  String? _last_name;
  String? get last_name => _$this._last_name;
  set last_name(String? last_name) => _$this._last_name = last_name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _mobile;
  String? get mobile => _$this._mobile;
  set mobile(String? mobile) => _$this._mobile = mobile;

  int? _country_id;
  int? get country_id => _$this._country_id;
  set country_id(int? country_id) => _$this._country_id = country_id;

  int? _nationality_id;
  int? get nationality_id => _$this._nationality_id;
  set nationality_id(int? nationality_id) =>
      _$this._nationality_id = nationality_id;

  int? _seen_ads;
  int? get seen_ads => _$this._seen_ads;
  set seen_ads(int? seen_ads) => _$this._seen_ads = seen_ads;

  int? _points_count;
  int? get points_count => _$this._points_count;
  set points_count(int? points_count) => _$this._points_count = points_count;

  String? _image_profile;
  String? get image_profile => _$this._image_profile;
  set image_profile(String? image_profile) =>
      _$this._image_profile = image_profile;

  String? _remember_token;
  String? get remember_token => _$this._remember_token;
  set remember_token(String? remember_token) =>
      _$this._remember_token = remember_token;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  UserCountryModelBuilder? _country;
  UserCountryModelBuilder get country =>
      _$this._country ??= new UserCountryModelBuilder();
  set country(UserCountryModelBuilder? country) => _$this._country = country;

  UserNationalityModelBuilder? _nationality;
  UserNationalityModelBuilder get nationality =>
      _$this._nationality ??= new UserNationalityModelBuilder();
  set nationality(UserNationalityModelBuilder? nationality) =>
      _$this._nationality = nationality;

  UserDataModelBuilder();

  UserDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _first_name = $v.first_name;
      _last_name = $v.last_name;
      _username = $v.username;
      _email = $v.email;
      _mobile = $v.mobile;
      _country_id = $v.country_id;
      _nationality_id = $v.nationality_id;
      _seen_ads = $v.seen_ads;
      _points_count = $v.points_count;
      _image_profile = $v.image_profile;
      _remember_token = $v.remember_token;
      _status = $v.status;
      _type = $v.type;
      _created_at = $v.created_at;
      _access_token = $v.access_token;
      _country = $v.country?.toBuilder();
      _nationality = $v.nationality?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDataModel;
  }

  @override
  void update(void Function(UserDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDataModel build() {
    _$UserDataModel _$result;
    try {
      _$result = _$v ??
          new _$UserDataModel._(
              id: id,
              first_name: first_name,
              last_name: last_name,
              username: username,
              email: email,
              mobile: mobile,
              country_id: country_id,
              nationality_id: nationality_id,
              seen_ads: seen_ads,
              points_count: points_count,
              image_profile: image_profile,
              remember_token: remember_token,
              status: status,
              type: type,
              created_at: created_at,
              access_token: access_token,
              country: _country?.build(),
              nationality: _nationality?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'country';
        _country?.build();
        _$failedField = 'nationality';
        _nationality?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
