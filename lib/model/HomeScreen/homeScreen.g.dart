// GENERATED CODE - DO NOT MODIFY BY HAND

part of homeScreen;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeeScreenModel> _$homeeScreenModelSerializer =
    new _$HomeeScreenModelSerializer();

class _$HomeeScreenModelSerializer
    implements StructuredSerializer<HomeeScreenModel> {
  @override
  final Iterable<Type> types = const [HomeeScreenModel, _$HomeeScreenModel];
  @override
  final String wireName = 'HomeeScreenModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, HomeeScreenModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'inside_ads',
      serializers.serialize(object.inside_ads,
          specifiedType: const FullType(
              BuiltList, const [const FullType(HomeInsideAdsModel)])),
      'campaigns_closing_soon',
      serializers.serialize(object.campaigns_closing_soon,
          specifiedType: const FullType(
              BuiltList, const [const FullType(HomeCampaignsSoonModel)])),
      'campaigns_available',
      serializers.serialize(object.campaigns_available,
          specifiedType: const FullType(
              BuiltList, const [const FullType(HomeCampaignsAvailableModel)])),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HomeeScreenModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeeScreenModelBuilder();

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
        case 'inside_ads':
          result.inside_ads.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HomeInsideAdsModel)]))!
              as BuiltList<Object?>);
          break;
        case 'campaigns_closing_soon':
          result.campaigns_closing_soon.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(HomeCampaignsSoonModel)
              ]))! as BuiltList<Object?>);
          break;
        case 'campaigns_available':
          result.campaigns_available.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(HomeCampaignsAvailableModel)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$HomeeScreenModel extends HomeeScreenModel {
  @override
  final String? message;
  @override
  final BuiltList<HomeInsideAdsModel> inside_ads;
  @override
  final BuiltList<HomeCampaignsSoonModel> campaigns_closing_soon;
  @override
  final BuiltList<HomeCampaignsAvailableModel> campaigns_available;

  factory _$HomeeScreenModel(
          [void Function(HomeeScreenModelBuilder)? updates]) =>
      (new HomeeScreenModelBuilder()..update(updates)).build();

  _$HomeeScreenModel._(
      {this.message,
      required this.inside_ads,
      required this.campaigns_closing_soon,
      required this.campaigns_available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        inside_ads, 'HomeeScreenModel', 'inside_ads');
    BuiltValueNullFieldError.checkNotNull(
        campaigns_closing_soon, 'HomeeScreenModel', 'campaigns_closing_soon');
    BuiltValueNullFieldError.checkNotNull(
        campaigns_available, 'HomeeScreenModel', 'campaigns_available');
  }

  @override
  HomeeScreenModel rebuild(void Function(HomeeScreenModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeeScreenModelBuilder toBuilder() =>
      new HomeeScreenModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeeScreenModel &&
        message == other.message &&
        inside_ads == other.inside_ads &&
        campaigns_closing_soon == other.campaigns_closing_soon &&
        campaigns_available == other.campaigns_available;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, message.hashCode), inside_ads.hashCode),
            campaigns_closing_soon.hashCode),
        campaigns_available.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeeScreenModel')
          ..add('message', message)
          ..add('inside_ads', inside_ads)
          ..add('campaigns_closing_soon', campaigns_closing_soon)
          ..add('campaigns_available', campaigns_available))
        .toString();
  }
}

class HomeeScreenModelBuilder
    implements Builder<HomeeScreenModel, HomeeScreenModelBuilder> {
  _$HomeeScreenModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<HomeInsideAdsModel>? _inside_ads;
  ListBuilder<HomeInsideAdsModel> get inside_ads =>
      _$this._inside_ads ??= new ListBuilder<HomeInsideAdsModel>();
  set inside_ads(ListBuilder<HomeInsideAdsModel>? inside_ads) =>
      _$this._inside_ads = inside_ads;

  ListBuilder<HomeCampaignsSoonModel>? _campaigns_closing_soon;
  ListBuilder<HomeCampaignsSoonModel> get campaigns_closing_soon =>
      _$this._campaigns_closing_soon ??=
          new ListBuilder<HomeCampaignsSoonModel>();
  set campaigns_closing_soon(
          ListBuilder<HomeCampaignsSoonModel>? campaigns_closing_soon) =>
      _$this._campaigns_closing_soon = campaigns_closing_soon;

  ListBuilder<HomeCampaignsAvailableModel>? _campaigns_available;
  ListBuilder<HomeCampaignsAvailableModel> get campaigns_available =>
      _$this._campaigns_available ??=
          new ListBuilder<HomeCampaignsAvailableModel>();
  set campaigns_available(
          ListBuilder<HomeCampaignsAvailableModel>? campaigns_available) =>
      _$this._campaigns_available = campaigns_available;

  HomeeScreenModelBuilder();

  HomeeScreenModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _inside_ads = $v.inside_ads.toBuilder();
      _campaigns_closing_soon = $v.campaigns_closing_soon.toBuilder();
      _campaigns_available = $v.campaigns_available.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeeScreenModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeeScreenModel;
  }

  @override
  void update(void Function(HomeeScreenModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeeScreenModel build() {
    _$HomeeScreenModel _$result;
    try {
      _$result = _$v ??
          new _$HomeeScreenModel._(
              message: message,
              inside_ads: inside_ads.build(),
              campaigns_closing_soon: campaigns_closing_soon.build(),
              campaigns_available: campaigns_available.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inside_ads';
        inside_ads.build();
        _$failedField = 'campaigns_closing_soon';
        campaigns_closing_soon.build();
        _$failedField = 'campaigns_available';
        campaigns_available.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeeScreenModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
