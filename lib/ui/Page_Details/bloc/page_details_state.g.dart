// GENERATED CODE - DO NOT MODIFY BY HAND

part of page_details_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageDetailsState extends PageDetailsState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final bool isSucessGet;
  @override
  final PageDetailsModel? GetPageDetails;

  factory _$PageDetailsState(
          [void Function(PageDetailsStateBuilder)? updates]) =>
      (new PageDetailsStateBuilder()..update(updates)).build();

  _$PageDetailsState._(
      {required this.error,
      required this.isLoading,
      required this.isSucessGet,
      this.GetPageDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'PageDetailsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'PageDetailsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isSucessGet, 'PageDetailsState', 'isSucessGet');
  }

  @override
  PageDetailsState rebuild(void Function(PageDetailsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageDetailsStateBuilder toBuilder() =>
      new PageDetailsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDetailsState &&
        error == other.error &&
        isLoading == other.isLoading &&
        isSucessGet == other.isSucessGet &&
        GetPageDetails == other.GetPageDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode),
            isSucessGet.hashCode),
        GetPageDetails.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageDetailsState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('isSucessGet', isSucessGet)
          ..add('GetPageDetails', GetPageDetails))
        .toString();
  }
}

class PageDetailsStateBuilder
    implements Builder<PageDetailsState, PageDetailsStateBuilder> {
  _$PageDetailsState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSucessGet;
  bool? get isSucessGet => _$this._isSucessGet;
  set isSucessGet(bool? isSucessGet) => _$this._isSucessGet = isSucessGet;

  PageDetailsModelBuilder? _GetPageDetails;
  PageDetailsModelBuilder get GetPageDetails =>
      _$this._GetPageDetails ??= new PageDetailsModelBuilder();
  set GetPageDetails(PageDetailsModelBuilder? GetPageDetails) =>
      _$this._GetPageDetails = GetPageDetails;

  PageDetailsStateBuilder();

  PageDetailsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _isSucessGet = $v.isSucessGet;
      _GetPageDetails = $v.GetPageDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageDetailsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageDetailsState;
  }

  @override
  void update(void Function(PageDetailsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageDetailsState build() {
    _$PageDetailsState _$result;
    try {
      _$result = _$v ??
          new _$PageDetailsState._(
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'PageDetailsState', 'error'),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'PageDetailsState', 'isLoading'),
              isSucessGet: BuiltValueNullFieldError.checkNotNull(
                  isSucessGet, 'PageDetailsState', 'isSucessGet'),
              GetPageDetails: _GetPageDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'GetPageDetails';
        _GetPageDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PageDetailsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
