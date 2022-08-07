// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TryLogin extends TryLogin {
  @override
  final String? username_email;
  @override
  final String? password;
  @override
  final String? fcm_token;
  @override
  final String? device_type;

  factory _$TryLogin([void Function(TryLoginBuilder)? updates]) =>
      (new TryLoginBuilder()..update(updates)).build();

  _$TryLogin._(
      {this.username_email, this.password, this.fcm_token, this.device_type})
      : super._();

  @override
  TryLogin rebuild(void Function(TryLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryLoginBuilder toBuilder() => new TryLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryLogin &&
        username_email == other.username_email &&
        password == other.password &&
        fcm_token == other.fcm_token &&
        device_type == other.device_type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, username_email.hashCode), password.hashCode),
            fcm_token.hashCode),
        device_type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryLogin')
          ..add('username_email', username_email)
          ..add('password', password)
          ..add('fcm_token', fcm_token)
          ..add('device_type', device_type))
        .toString();
  }
}

class TryLoginBuilder implements Builder<TryLogin, TryLoginBuilder> {
  _$TryLogin? _$v;

  String? _username_email;
  String? get username_email => _$this._username_email;
  set username_email(String? username_email) =>
      _$this._username_email = username_email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _fcm_token;
  String? get fcm_token => _$this._fcm_token;
  set fcm_token(String? fcm_token) => _$this._fcm_token = fcm_token;

  String? _device_type;
  String? get device_type => _$this._device_type;
  set device_type(String? device_type) => _$this._device_type = device_type;

  TryLoginBuilder();

  TryLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username_email = $v.username_email;
      _password = $v.password;
      _fcm_token = $v.fcm_token;
      _device_type = $v.device_type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TryLogin;
  }

  @override
  void update(void Function(TryLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryLogin build() {
    final _$result = _$v ??
        new _$TryLogin._(
            username_email: username_email,
            password: password,
            fcm_token: fcm_token,
            device_type: device_type);
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder)? updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError? _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeStatus extends ChangeStatus {
  factory _$ChangeStatus([void Function(ChangeStatusBuilder)? updates]) =>
      (new ChangeStatusBuilder()..update(updates)).build();

  _$ChangeStatus._() : super._();

  @override
  ChangeStatus rebuild(void Function(ChangeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStatusBuilder toBuilder() => new ChangeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeStatus;
  }

  @override
  int get hashCode {
    return 20091075;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ChangeStatus').toString();
  }
}

class ChangeStatusBuilder
    implements Builder<ChangeStatus, ChangeStatusBuilder> {
  _$ChangeStatus? _$v;

  ChangeStatusBuilder();

  @override
  void replace(ChangeStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeStatus;
  }

  @override
  void update(void Function(ChangeStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeStatus build() {
    final _$result = _$v ?? new _$ChangeStatus._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
