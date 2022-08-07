// GENERATED CODE - DO NOT MODIFY BY HAND

part of settings_data_privacy_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrivacyModel> _$privacyModelSerializer =
    new _$PrivacyModelSerializer();

class _$PrivacyModelSerializer implements StructuredSerializer<PrivacyModel> {
  @override
  final Iterable<Type> types = const [PrivacyModel, _$PrivacyModel];
  @override
  final String wireName = 'PrivacyModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PrivacyModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'privacy',
      serializers.serialize(object.privacy,
          specifiedType: const FullType(PrivacyModel)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.views;
    if (value != null) {
      result
        ..add('views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.key_words;
    if (value != null) {
      result
        ..add('key_words')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PrivacyModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrivacyModelBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'key_words':
          result.key_words = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'privacy':
          result.privacy.replace(serializers.deserialize(value,
              specifiedType: const FullType(PrivacyModel))! as PrivacyModel);
          break;
      }
    }

    return result.build();
  }
}

class _$PrivacyModel extends PrivacyModel {
  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? video;
  @override
  final int? views;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final String? key_words;
  @override
  final PrivacyModel privacy;

  factory _$PrivacyModel([void Function(PrivacyModelBuilder)? updates]) =>
      (new PrivacyModelBuilder()..update(updates)).build();

  _$PrivacyModel._(
      {this.id,
      this.image,
      this.video,
      this.views,
      this.title,
      this.slug,
      this.description,
      this.key_words,
      required this.privacy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(privacy, 'PrivacyModel', 'privacy');
  }

  @override
  PrivacyModel rebuild(void Function(PrivacyModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivacyModelBuilder toBuilder() => new PrivacyModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivacyModel &&
        id == other.id &&
        image == other.image &&
        video == other.video &&
        views == other.views &&
        title == other.title &&
        slug == other.slug &&
        description == other.description &&
        key_words == other.key_words &&
        privacy == other.privacy;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), image.hashCode),
                                video.hashCode),
                            views.hashCode),
                        title.hashCode),
                    slug.hashCode),
                description.hashCode),
            key_words.hashCode),
        privacy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrivacyModel')
          ..add('id', id)
          ..add('image', image)
          ..add('video', video)
          ..add('views', views)
          ..add('title', title)
          ..add('slug', slug)
          ..add('description', description)
          ..add('key_words', key_words)
          ..add('privacy', privacy))
        .toString();
  }
}

class PrivacyModelBuilder
    implements Builder<PrivacyModel, PrivacyModelBuilder> {
  _$PrivacyModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _key_words;
  String? get key_words => _$this._key_words;
  set key_words(String? key_words) => _$this._key_words = key_words;

  PrivacyModelBuilder? _privacy;
  PrivacyModelBuilder get privacy =>
      _$this._privacy ??= new PrivacyModelBuilder();
  set privacy(PrivacyModelBuilder? privacy) => _$this._privacy = privacy;

  PrivacyModelBuilder();

  PrivacyModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _video = $v.video;
      _views = $v.views;
      _title = $v.title;
      _slug = $v.slug;
      _description = $v.description;
      _key_words = $v.key_words;
      _privacy = $v.privacy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivacyModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivacyModel;
  }

  @override
  void update(void Function(PrivacyModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrivacyModel build() {
    _$PrivacyModel _$result;
    try {
      _$result = _$v ??
          new _$PrivacyModel._(
              id: id,
              image: image,
              video: video,
              views: views,
              title: title,
              slug: slug,
              description: description,
              key_words: key_words,
              privacy: privacy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'privacy';
        privacy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PrivacyModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
