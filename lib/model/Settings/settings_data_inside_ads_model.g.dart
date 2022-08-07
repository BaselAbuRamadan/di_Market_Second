// GENERATED CODE - DO NOT MODIFY BY HAND

part of settings_data_inside_ads_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InsideAdsModel> _$insideAdsModelSerializer =
    new _$InsideAdsModelSerializer();

class _$InsideAdsModelSerializer
    implements StructuredSerializer<InsideAdsModel> {
  @override
  final Iterable<Type> types = const [InsideAdsModel, _$InsideAdsModel];
  @override
  final String wireName = 'InsideAdsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, InsideAdsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'inside_ads',
      serializers.serialize(object.inside_ads,
          specifiedType: const FullType(InsideAdsModel)),
    ];
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
  InsideAdsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InsideAdsModelBuilder();

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
        case 'inside_ads':
          result.inside_ads.replace(serializers.deserialize(value,
                  specifiedType: const FullType(InsideAdsModel))!
              as InsideAdsModel);
          break;
      }
    }

    return result.build();
  }
}

class _$InsideAdsModel extends InsideAdsModel {
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
  @override
  final InsideAdsModel inside_ads;

  factory _$InsideAdsModel([void Function(InsideAdsModelBuilder)? updates]) =>
      (new InsideAdsModelBuilder()..update(updates)).build();

  _$InsideAdsModel._(
      {this.id,
      this.type,
      this.image,
      this.url,
      this.status,
      this.name,
      this.details,
      required this.inside_ads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        inside_ads, 'InsideAdsModel', 'inside_ads');
  }

  @override
  InsideAdsModel rebuild(void Function(InsideAdsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsideAdsModelBuilder toBuilder() =>
      new InsideAdsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsideAdsModel &&
        id == other.id &&
        type == other.type &&
        image == other.image &&
        url == other.url &&
        status == other.status &&
        name == other.name &&
        details == other.details &&
        inside_ads == other.inside_ads;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), type.hashCode),
                            image.hashCode),
                        url.hashCode),
                    status.hashCode),
                name.hashCode),
            details.hashCode),
        inside_ads.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InsideAdsModel')
          ..add('id', id)
          ..add('type', type)
          ..add('image', image)
          ..add('url', url)
          ..add('status', status)
          ..add('name', name)
          ..add('details', details)
          ..add('inside_ads', inside_ads))
        .toString();
  }
}

class InsideAdsModelBuilder
    implements Builder<InsideAdsModel, InsideAdsModelBuilder> {
  _$InsideAdsModel? _$v;

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

  InsideAdsModelBuilder? _inside_ads;
  InsideAdsModelBuilder get inside_ads =>
      _$this._inside_ads ??= new InsideAdsModelBuilder();
  set inside_ads(InsideAdsModelBuilder? inside_ads) =>
      _$this._inside_ads = inside_ads;

  InsideAdsModelBuilder();

  InsideAdsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _image = $v.image;
      _url = $v.url;
      _status = $v.status;
      _name = $v.name;
      _details = $v.details;
      _inside_ads = $v.inside_ads.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InsideAdsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InsideAdsModel;
  }

  @override
  void update(void Function(InsideAdsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InsideAdsModel build() {
    _$InsideAdsModel _$result;
    try {
      _$result = _$v ??
          new _$InsideAdsModel._(
              id: id,
              type: type,
              image: image,
              url: url,
              status: status,
              name: name,
              details: details,
              inside_ads: inside_ads.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inside_ads';
        inside_ads.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InsideAdsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
