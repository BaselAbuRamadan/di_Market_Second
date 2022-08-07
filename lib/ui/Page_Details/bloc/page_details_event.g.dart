// GENERATED CODE - DO NOT MODIFY BY HAND

part of page_details_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

class _$GetPageDetails extends GetPageDetails {
  @override
  final int? PageID;

  factory _$GetPageDetails([void Function(GetPageDetailsBuilder)? updates]) =>
      (new GetPageDetailsBuilder()..update(updates)).build();

  _$GetPageDetails._({this.PageID}) : super._();

  @override
  GetPageDetails rebuild(void Function(GetPageDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPageDetailsBuilder toBuilder() =>
      new GetPageDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPageDetails && PageID == other.PageID;
  }

  @override
  int get hashCode {
    return $jf($jc(0, PageID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetPageDetails')
          ..add('PageID', PageID))
        .toString();
  }
}

class GetPageDetailsBuilder
    implements Builder<GetPageDetails, GetPageDetailsBuilder> {
  _$GetPageDetails? _$v;

  int? _PageID;
  int? get PageID => _$this._PageID;
  set PageID(int? PageID) => _$this._PageID = PageID;

  GetPageDetailsBuilder();

  GetPageDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _PageID = $v.PageID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPageDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPageDetails;
  }

  @override
  void update(void Function(GetPageDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetPageDetails build() {
    final _$result = _$v ?? new _$GetPageDetails._(PageID: PageID);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
