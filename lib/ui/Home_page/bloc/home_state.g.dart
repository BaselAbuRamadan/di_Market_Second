// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final bool isSucessGet;
  @override
  final HomeeScreenModel? GetDataHome;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._(
      {required this.error,
      required this.isLoading,
      required this.isSucessGet,
      this.GetDataHome})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'HomeState', 'error');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isSucessGet, 'HomeState', 'isSucessGet');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        error == other.error &&
        isLoading == other.isLoading &&
        isSucessGet == other.isSucessGet &&
        GetDataHome == other.GetDataHome;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode),
            isSucessGet.hashCode),
        GetDataHome.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('isSucessGet', isSucessGet)
          ..add('GetDataHome', GetDataHome))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSucessGet;
  bool? get isSucessGet => _$this._isSucessGet;
  set isSucessGet(bool? isSucessGet) => _$this._isSucessGet = isSucessGet;

  HomeeScreenModelBuilder? _GetDataHome;
  HomeeScreenModelBuilder get GetDataHome =>
      _$this._GetDataHome ??= new HomeeScreenModelBuilder();
  set GetDataHome(HomeeScreenModelBuilder? GetDataHome) =>
      _$this._GetDataHome = GetDataHome;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _isSucessGet = $v.isSucessGet;
      _GetDataHome = $v.GetDataHome?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'HomeState', 'error'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'HomeState', 'isLoading'),
              isSucessGet: BuiltValueNullFieldError.checkNotNull(
                  isSucessGet, 'HomeState', 'isSucessGet'),
              GetDataHome: _GetDataHome?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'GetDataHome';
        _GetDataHome?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
