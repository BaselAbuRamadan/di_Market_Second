// GENERATED CODE - DO NOT MODIFY BY HAND

part of PageDetails_Data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageDetailsDataModel> _$pageDetailsDataModelSerializer =
    new _$PageDetailsDataModelSerializer();

class _$PageDetailsDataModelSerializer
    implements StructuredSerializer<PageDetailsDataModel> {
  @override
  final Iterable<Type> types = const [
    PageDetailsDataModel,
    _$PageDetailsDataModel
  ];
  @override
  final String wireName = 'PageDetailsDataModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PageDetailsDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  PageDetailsDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageDetailsDataModelBuilder();

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
              specifiedType: const FullType(String)) as String?;
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
      }
    }

    return result.build();
  }
}

class _$PageDetailsDataModel extends PageDetailsDataModel {
  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? video;
  @override
  final String? views;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final String? key_words;

  factory _$PageDetailsDataModel(
          [void Function(PageDetailsDataModelBuilder)? updates]) =>
      (new PageDetailsDataModelBuilder()..update(updates)).build();

  _$PageDetailsDataModel._(
      {this.id,
      this.image,
      this.video,
      this.views,
      this.title,
      this.slug,
      this.description,
      this.key_words})
      : super._();

  @override
  PageDetailsDataModel rebuild(
          void Function(PageDetailsDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageDetailsDataModelBuilder toBuilder() =>
      new PageDetailsDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageDetailsDataModel &&
        id == other.id &&
        image == other.image &&
        video == other.video &&
        views == other.views &&
        title == other.title &&
        slug == other.slug &&
        description == other.description &&
        key_words == other.key_words;
  }

  @override
  int get hashCode {
    return $jf($jc(
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
        key_words.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageDetailsDataModel')
          ..add('id', id)
          ..add('image', image)
          ..add('video', video)
          ..add('views', views)
          ..add('title', title)
          ..add('slug', slug)
          ..add('description', description)
          ..add('key_words', key_words))
        .toString();
  }
}

class PageDetailsDataModelBuilder
    implements Builder<PageDetailsDataModel, PageDetailsDataModelBuilder> {
  _$PageDetailsDataModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  String? _views;
  String? get views => _$this._views;
  set views(String? views) => _$this._views = views;

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

  PageDetailsDataModelBuilder();

  PageDetailsDataModelBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageDetailsDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageDetailsDataModel;
  }

  @override
  void update(void Function(PageDetailsDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageDetailsDataModel build() {
    final _$result = _$v ??
        new _$PageDetailsDataModel._(
            id: id,
            image: image,
            video: video,
            views: views,
            title: title,
            slug: slug,
            description: description,
            key_words: key_words);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
