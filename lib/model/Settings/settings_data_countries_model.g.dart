// GENERATED CODE - DO NOT MODIFY BY HAND

part of settings_data_countries_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountriesModel> _$countriesModelSerializer =
    new _$CountriesModelSerializer();

class _$CountriesModelSerializer
    implements StructuredSerializer<CountriesModel> {
  @override
  final Iterable<Type> types = const [CountriesModel, _$CountriesModel];
  @override
  final String wireName = 'CountriesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountriesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'countries',
      serializers.serialize(object.countries,
          specifiedType: const FullType(CountriesModel)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountriesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountriesModelBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CountriesModel))!
              as CountriesModel);
          break;
      }
    }

    return result.build();
  }
}

class _$CountriesModel extends CountriesModel {
  @override
  final int? id;
  @override
  final String? status;
  @override
  final String? created_at;
  @override
  final String? name;
  @override
  final CountriesModel countries;

  factory _$CountriesModel([void Function(CountriesModelBuilder)? updates]) =>
      (new CountriesModelBuilder()..update(updates)).build();

  _$CountriesModel._(
      {this.id,
      this.status,
      this.created_at,
      this.name,
      required this.countries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countries, 'CountriesModel', 'countries');
  }

  @override
  CountriesModel rebuild(void Function(CountriesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesModelBuilder toBuilder() =>
      new CountriesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesModel &&
        id == other.id &&
        status == other.status &&
        created_at == other.created_at &&
        name == other.name &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), status.hashCode), created_at.hashCode),
            name.hashCode),
        countries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountriesModel')
          ..add('id', id)
          ..add('status', status)
          ..add('created_at', created_at)
          ..add('name', name)
          ..add('countries', countries))
        .toString();
  }
}

class CountriesModelBuilder
    implements Builder<CountriesModel, CountriesModelBuilder> {
  _$CountriesModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CountriesModelBuilder? _countries;
  CountriesModelBuilder get countries =>
      _$this._countries ??= new CountriesModelBuilder();
  set countries(CountriesModelBuilder? countries) =>
      _$this._countries = countries;

  CountriesModelBuilder();

  CountriesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _created_at = $v.created_at;
      _name = $v.name;
      _countries = $v.countries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountriesModel;
  }

  @override
  void update(void Function(CountriesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountriesModel build() {
    _$CountriesModel _$result;
    try {
      _$result = _$v ??
          new _$CountriesModel._(
              id: id,
              status: status,
              created_at: created_at,
              name: name,
              countries: countries.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountriesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
