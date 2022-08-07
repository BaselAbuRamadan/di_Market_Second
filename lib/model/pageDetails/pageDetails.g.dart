// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageDetails;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageDetailsModel> _$pageDetailsModelSerializer =
    new _$PageDetailsModelSerializer();

class _$PageDetailsModelSerializer
    implements StructuredSerializer<PageDetailsModel> {
  @override
  final Iterable<Type> types = const [PageDetailsModel, _$PageDetailsModel];
  @override
  final String wireName = 'PageDetailsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PageDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PageDetailsDataModel)));
    }
    return result;
  }

  @override
  PageDetailsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageDetailsModelBuilder();

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
        case 'page':
          result.page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PageDetailsDataModel))!
              as PageDetailsDataModel);
          break;
      }
    }

    return result.build();
  }
}

class _$PageDetailsModel extends PageDetailsModel {
  @override
  final String? message;
  @override
  final bool? status;
  @override
  final int? code;
  @override
  final PageDetailsDataModel? page;

  factory _$PageDetailsModel(
          [void Function(PageDetailsModelBuilder)? updates]) =>
      (new PageDetailsModelBuilder()..update(updates)).build();

  _$PageDetailsModel._({this.message, this.status, this.code, this.page})
      : super._();

  @override
  PageDetailsModel rebuild(void Function(PageDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageDetailsModelBuilder toBuilder() =>
      new PageDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDetailsModel &&
        message == other.message &&
        status == other.status &&
        code == other.code &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, message.hashCode), status.hashCode), code.hashCode),
        page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageDetailsModel')
          ..add('message', message)
          ..add('status', status)
          ..add('code', code)
          ..add('page', page))
        .toString();
  }
}

class PageDetailsModelBuilder
    implements Builder<PageDetailsModel, PageDetailsModelBuilder> {
  _$PageDetailsModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  PageDetailsDataModelBuilder? _page;
  PageDetailsDataModelBuilder get page =>
      _$this._page ??= new PageDetailsDataModelBuilder();
  set page(PageDetailsDataModelBuilder? page) => _$this._page = page;

  PageDetailsModelBuilder();

  PageDetailsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _status = $v.status;
      _code = $v.code;
      _page = $v.page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageDetailsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageDetailsModel;
  }

  @override
  void update(void Function(PageDetailsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageDetailsModel build() {
    _$PageDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$PageDetailsModel._(
              message: message,
              status: status,
              code: code,
              page: _page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'page';
        _page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PageDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
