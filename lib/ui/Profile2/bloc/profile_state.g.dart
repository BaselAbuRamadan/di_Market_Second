// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileState extends ProfileState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final bool isSucessGet;
  @override
  final UserModel? GetUserProf;

  factory _$ProfileState([void Function(ProfileStateBuilder)? updates]) =>
      (new ProfileStateBuilder()..update(updates)).build();

  _$ProfileState._(
      {required this.error,
      required this.isLoading,
      required this.isSucessGet,
      this.GetUserProf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'ProfileState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'ProfileState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isSucessGet, 'ProfileState', 'isSucessGet');
  }

  @override
  ProfileState rebuild(void Function(ProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileStateBuilder toBuilder() => new ProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileState &&
        error == other.error &&
        isLoading == other.isLoading &&
        isSucessGet == other.isSucessGet &&
        GetUserProf == other.GetUserProf;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode),
            isSucessGet.hashCode),
        GetUserProf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('isSucessGet', isSucessGet)
          ..add('GetUserProf', GetUserProf))
        .toString();
  }
}

class ProfileStateBuilder
    implements Builder<ProfileState, ProfileStateBuilder> {
  _$ProfileState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSucessGet;
  bool? get isSucessGet => _$this._isSucessGet;
  set isSucessGet(bool? isSucessGet) => _$this._isSucessGet = isSucessGet;

  UserModelBuilder? _GetUserProf;
  UserModelBuilder get GetUserProf =>
      _$this._GetUserProf ??= new UserModelBuilder();
  set GetUserProf(UserModelBuilder? GetUserProf) =>
      _$this._GetUserProf = GetUserProf;

  ProfileStateBuilder();

  ProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _isSucessGet = $v.isSucessGet;
      _GetUserProf = $v.GetUserProf?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileState;
  }

  @override
  void update(void Function(ProfileStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileState build() {
    _$ProfileState _$result;
    try {
      _$result = _$v ??
          new _$ProfileState._(
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'ProfileState', 'error'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'ProfileState', 'isLoading'),
              isSucessGet: BuiltValueNullFieldError.checkNotNull(
                  isSucessGet, 'ProfileState', 'isSucessGet'),
              GetUserProf: _GetUserProf?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'GetUserProf';
        _GetUserProf?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
