// GENERATED CODE - DO NOT MODIFY BY HAND

part of settings_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsModel> _$settingsModelSerializer =
    new _$SettingsModelSerializer();

class _$SettingsModelSerializer implements StructuredSerializer<SettingsModel> {
  @override
  final Iterable<Type> types = const [SettingsModel, _$SettingsModel];
  @override
  final String wireName = 'SettingsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SettingsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'settings',
      serializers.serialize(object.settings,
          specifiedType: const FullType(SettingsDataModel)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SettingsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'settings':
          result.settings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SettingsDataModel))!
              as SettingsDataModel);
          break;
      }
    }

    return result.build();
  }
}

class _$SettingsModel extends SettingsModel {
  @override
  final String? message;
  @override
  final bool? status;
  @override
  final int? code;
  @override
  final SettingsDataModel settings;

  factory _$SettingsModel([void Function(SettingsModelBuilder)? updates]) =>
      (new SettingsModelBuilder()..update(updates)).build();

  _$SettingsModel._(
      {this.message, this.status, this.code, required this.settings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        settings, 'SettingsModel', 'settings');
  }

  @override
  SettingsModel rebuild(void Function(SettingsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsModelBuilder toBuilder() => new SettingsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsModel &&
        message == other.message &&
        status == other.status &&
        code == other.code &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, message.hashCode), status.hashCode), code.hashCode),
        settings.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsModel')
          ..add('message', message)
          ..add('status', status)
          ..add('code', code)
          ..add('settings', settings))
        .toString();
  }
}

class SettingsModelBuilder
    implements Builder<SettingsModel, SettingsModelBuilder> {
  _$SettingsModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  SettingsDataModelBuilder? _settings;
  SettingsDataModelBuilder get settings =>
      _$this._settings ??= new SettingsDataModelBuilder();
  set settings(SettingsDataModelBuilder? settings) =>
      _$this._settings = settings;

  SettingsModelBuilder();

  SettingsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _status = $v.status;
      _code = $v.code;
      _settings = $v.settings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsModel;
  }

  @override
  void update(void Function(SettingsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsModel build() {
    _$SettingsModel _$result;
    try {
      _$result = _$v ??
          new _$SettingsModel._(
              message: message,
              status: status,
              code: code,
              settings: settings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'settings';
        settings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SettingsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
