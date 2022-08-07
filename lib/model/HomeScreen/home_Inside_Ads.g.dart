// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_Inside_Ads;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeInsideAdsModel> _$homeInsideAdsModelSerializer =
    new _$HomeInsideAdsModelSerializer();

class _$HomeInsideAdsModelSerializer
    implements StructuredSerializer<HomeInsideAdsModel> {
  @override
  final Iterable<Type> types = const [HomeInsideAdsModel, _$HomeInsideAdsModel];
  @override
  final String wireName = 'HomeInsideAdsModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HomeInsideAdsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HomeInsideAdsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeInsideAdsModelBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$HomeInsideAdsModel extends HomeInsideAdsModel {
  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? image;
  @override
  final String? url;
  @override
  final String? status;
  @override
  final String? name;
  @override
  final String? details;

  factory _$HomeInsideAdsModel(
          [void Function(HomeInsideAdsModelBuilder)? updates]) =>
      (new HomeInsideAdsModelBuilder()..update(updates)).build();

  _$HomeInsideAdsModel._(
      {this.id,
      this.type,
      this.image,
      this.url,
      this.status,
      this.name,
      this.details})
      : super._();

  @override
  HomeInsideAdsModel rebuild(
          void Function(HomeInsideAdsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeInsideAdsModelBuilder toBuilder() =>
      new HomeInsideAdsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeInsideAdsModel &&
        id == other.id &&
        type == other.type &&
        image == other.image &&
        url == other.url &&
        status == other.status &&
        name == other.name &&
        details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), type.hashCode),
                        image.hashCode),
                    url.hashCode),
                status.hashCode),
            name.hashCode),
        details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeInsideAdsModel')
          ..add('id', id)
          ..add('type', type)
          ..add('image', image)
          ..add('url', url)
          ..add('status', status)
          ..add('name', name)
          ..add('details', details))
        .toString();
  }
}

class HomeInsideAdsModelBuilder
    implements Builder<HomeInsideAdsModel, HomeInsideAdsModelBuilder> {
  _$HomeInsideAdsModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  HomeInsideAdsModelBuilder();

  HomeInsideAdsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _image = $v.image;
      _url = $v.url;
      _status = $v.status;
      _name = $v.name;
      _details = $v.details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeInsideAdsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeInsideAdsModel;
  }

  @override
  void update(void Function(HomeInsideAdsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeInsideAdsModel build() {
    final _$result = _$v ??
        new _$HomeInsideAdsModel._(
            id: id,
            type: type,
            image: image,
            url: url,
            status: status,
            name: name,
            details: details);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
