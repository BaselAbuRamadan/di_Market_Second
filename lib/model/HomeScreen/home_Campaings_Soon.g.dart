// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_Campaings_Soon;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeCampaignsSoonModel> _$homeCampaignsSoonModelSerializer =
    new _$HomeCampaignsSoonModelSerializer();

class _$HomeCampaignsSoonModelSerializer
    implements StructuredSerializer<HomeCampaignsSoonModel> {
  @override
  final Iterable<Type> types = const [
    HomeCampaignsSoonModel,
    _$HomeCampaignsSoonModel
  ];
  @override
  final String wireName = 'HomeCampaignsSoonModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HomeCampaignsSoonModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.campaign_image;
    if (value != null) {
      result
        ..add('campaign_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prize_image;
    if (value != null) {
      result
        ..add('prize_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.draw_date;
    if (value != null) {
      result
        ..add('draw_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buying_allow;
    if (value != null) {
      result
        ..add('buying_allow')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.solid_count;
    if (value != null) {
      result
        ..add('solid_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sell_perecent;
    if (value != null) {
      result
        ..add('sell_perecent')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.winners_count;
    if (value != null) {
      result
        ..add('winners_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_favorite;
    if (value != null) {
      result
        ..add('is_favorite')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.campaign_title;
    if (value != null) {
      result
        ..add('campaign_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.campaign_details;
    if (value != null) {
      result
        ..add('campaign_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prize_title;
    if (value != null) {
      result
        ..add('prize_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prize_details;
    if (value != null) {
      result
        ..add('prize_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HomeCampaignsSoonModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeCampaignsSoonModelBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'campaign_image':
          result.campaign_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prize_image':
          result.prize_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'draw_date':
          result.draw_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buying_allow':
          result.buying_allow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'solid_count':
          result.solid_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sell_perecent':
          result.sell_perecent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'winners_count':
          result.winners_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_favorite':
          result.is_favorite = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'campaign_title':
          result.campaign_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'campaign_details':
          result.campaign_details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prize_title':
          result.prize_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prize_details':
          result.prize_details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$HomeCampaignsSoonModel extends HomeCampaignsSoonModel {
  @override
  final int? id;
  @override
  final int? price;
  @override
  final int? discount;
  @override
  final String? campaign_image;
  @override
  final String? prize_image;
  @override
  final String? draw_date;
  @override
  final int? buying_allow;
  @override
  final int? solid_count;
  @override
  final int? sell_perecent;
  @override
  final int? winners_count;
  @override
  final String? status;
  @override
  final String? created_at;
  @override
  final int? is_favorite;
  @override
  final String? campaign_title;
  @override
  final String? campaign_details;
  @override
  final String? prize_title;
  @override
  final String? prize_details;

  factory _$HomeCampaignsSoonModel(
          [void Function(HomeCampaignsSoonModelBuilder)? updates]) =>
      (new HomeCampaignsSoonModelBuilder()..update(updates)).build();

  _$HomeCampaignsSoonModel._(
      {this.id,
      this.price,
      this.discount,
      this.campaign_image,
      this.prize_image,
      this.draw_date,
      this.buying_allow,
      this.solid_count,
      this.sell_perecent,
      this.winners_count,
      this.status,
      this.created_at,
      this.is_favorite,
      this.campaign_title,
      this.campaign_details,
      this.prize_title,
      this.prize_details})
      : super._();

  @override
  HomeCampaignsSoonModel rebuild(
          void Function(HomeCampaignsSoonModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeCampaignsSoonModelBuilder toBuilder() =>
      new HomeCampaignsSoonModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeCampaignsSoonModel &&
        id == other.id &&
        price == other.price &&
        discount == other.discount &&
        campaign_image == other.campaign_image &&
        prize_image == other.prize_image &&
        draw_date == other.draw_date &&
        buying_allow == other.buying_allow &&
        solid_count == other.solid_count &&
        sell_perecent == other.sell_perecent &&
        winners_count == other.winners_count &&
        status == other.status &&
        created_at == other.created_at &&
        is_favorite == other.is_favorite &&
        campaign_title == other.campaign_title &&
        campaign_details == other.campaign_details &&
        prize_title == other.prize_title &&
        prize_details == other.prize_details;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    price
                                                                        .hashCode),
                                                                discount
                                                                    .hashCode),
                                                            campaign_image
                                                                .hashCode),
                                                        prize_image.hashCode),
                                                    draw_date.hashCode),
                                                buying_allow.hashCode),
                                            solid_count.hashCode),
                                        sell_perecent.hashCode),
                                    winners_count.hashCode),
                                status.hashCode),
                            created_at.hashCode),
                        is_favorite.hashCode),
                    campaign_title.hashCode),
                campaign_details.hashCode),
            prize_title.hashCode),
        prize_details.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeCampaignsSoonModel')
          ..add('id', id)
          ..add('price', price)
          ..add('discount', discount)
          ..add('campaign_image', campaign_image)
          ..add('prize_image', prize_image)
          ..add('draw_date', draw_date)
          ..add('buying_allow', buying_allow)
          ..add('solid_count', solid_count)
          ..add('sell_perecent', sell_perecent)
          ..add('winners_count', winners_count)
          ..add('status', status)
          ..add('created_at', created_at)
          ..add('is_favorite', is_favorite)
          ..add('campaign_title', campaign_title)
          ..add('campaign_details', campaign_details)
          ..add('prize_title', prize_title)
          ..add('prize_details', prize_details))
        .toString();
  }
}

class HomeCampaignsSoonModelBuilder
    implements Builder<HomeCampaignsSoonModel, HomeCampaignsSoonModelBuilder> {
  _$HomeCampaignsSoonModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  int? _discount;
  int? get discount => _$this._discount;
  set discount(int? discount) => _$this._discount = discount;

  String? _campaign_image;
  String? get campaign_image => _$this._campaign_image;
  set campaign_image(String? campaign_image) =>
      _$this._campaign_image = campaign_image;

  String? _prize_image;
  String? get prize_image => _$this._prize_image;
  set prize_image(String? prize_image) => _$this._prize_image = prize_image;

  String? _draw_date;
  String? get draw_date => _$this._draw_date;
  set draw_date(String? draw_date) => _$this._draw_date = draw_date;

  int? _buying_allow;
  int? get buying_allow => _$this._buying_allow;
  set buying_allow(int? buying_allow) => _$this._buying_allow = buying_allow;

  int? _solid_count;
  int? get solid_count => _$this._solid_count;
  set solid_count(int? solid_count) => _$this._solid_count = solid_count;

  int? _sell_perecent;
  int? get sell_perecent => _$this._sell_perecent;
  set sell_perecent(int? sell_perecent) =>
      _$this._sell_perecent = sell_perecent;

  int? _winners_count;
  int? get winners_count => _$this._winners_count;
  set winners_count(int? winners_count) =>
      _$this._winners_count = winners_count;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  int? _is_favorite;
  int? get is_favorite => _$this._is_favorite;
  set is_favorite(int? is_favorite) => _$this._is_favorite = is_favorite;

  String? _campaign_title;
  String? get campaign_title => _$this._campaign_title;
  set campaign_title(String? campaign_title) =>
      _$this._campaign_title = campaign_title;

  String? _campaign_details;
  String? get campaign_details => _$this._campaign_details;
  set campaign_details(String? campaign_details) =>
      _$this._campaign_details = campaign_details;

  String? _prize_title;
  String? get prize_title => _$this._prize_title;
  set prize_title(String? prize_title) => _$this._prize_title = prize_title;

  String? _prize_details;
  String? get prize_details => _$this._prize_details;
  set prize_details(String? prize_details) =>
      _$this._prize_details = prize_details;

  HomeCampaignsSoonModelBuilder();

  HomeCampaignsSoonModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _price = $v.price;
      _discount = $v.discount;
      _campaign_image = $v.campaign_image;
      _prize_image = $v.prize_image;
      _draw_date = $v.draw_date;
      _buying_allow = $v.buying_allow;
      _solid_count = $v.solid_count;
      _sell_perecent = $v.sell_perecent;
      _winners_count = $v.winners_count;
      _status = $v.status;
      _created_at = $v.created_at;
      _is_favorite = $v.is_favorite;
      _campaign_title = $v.campaign_title;
      _campaign_details = $v.campaign_details;
      _prize_title = $v.prize_title;
      _prize_details = $v.prize_details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeCampaignsSoonModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeCampaignsSoonModel;
  }

  @override
  void update(void Function(HomeCampaignsSoonModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeCampaignsSoonModel build() {
    final _$result = _$v ??
        new _$HomeCampaignsSoonModel._(
            id: id,
            price: price,
            discount: discount,
            campaign_image: campaign_image,
            prize_image: prize_image,
            draw_date: draw_date,
            buying_allow: buying_allow,
            solid_count: solid_count,
            sell_perecent: sell_perecent,
            winners_count: winners_count,
            status: status,
            created_at: created_at,
            is_favorite: is_favorite,
            campaign_title: campaign_title,
            campaign_details: campaign_details,
            prize_title: prize_title,
            prize_details: prize_details);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
