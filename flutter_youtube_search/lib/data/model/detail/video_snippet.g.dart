// GENERATED CODE - DO NOT MODIFY BY HAND

part of video_snippet;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoSnippet> _$videoSnippetSerializer =
    new _$VideoSnippetSerializer();

class _$VideoSnippetSerializer implements StructuredSerializer<VideoSnippet> {
  @override
  final Iterable<Type> types = const [VideoSnippet, _$VideoSnippet];
  @override
  final String wireName = 'VideoSnippet';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoSnippet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'publishedAt',
      serializers.serialize(object.publishedAt,
          specifiedType: const FullType(String)),
      'channelId',
      serializers.serialize(object.channelId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'thumbnails',
      serializers.serialize(object.thumbnails,
          specifiedType: const FullType(Thumbnails)),
      'channelTitle',
      serializers.serialize(object.channelTitle,
          specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  VideoSnippet deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoSnippetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'channelId':
          result.channelId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'thumbnails':
          result.thumbnails.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnails))! as Thumbnails);
          break;
        case 'channelTitle':
          result.channelTitle = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$VideoSnippet extends VideoSnippet {
  @override
  final String publishedAt;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final String description;
  @override
  final Thumbnails thumbnails;
  @override
  final String channelTitle;
  @override
  final BuiltList<String> tags;

  factory _$VideoSnippet([void Function(VideoSnippetBuilder)? updates]) =>
      (new VideoSnippetBuilder()..update(updates))._build();

  _$VideoSnippet._(
      {required this.publishedAt,
      required this.channelId,
      required this.title,
      required this.description,
      required this.thumbnails,
      required this.channelTitle,
      required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        publishedAt, r'VideoSnippet', 'publishedAt');
    BuiltValueNullFieldError.checkNotNull(
        channelId, r'VideoSnippet', 'channelId');
    BuiltValueNullFieldError.checkNotNull(title, r'VideoSnippet', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'VideoSnippet', 'description');
    BuiltValueNullFieldError.checkNotNull(
        thumbnails, r'VideoSnippet', 'thumbnails');
    BuiltValueNullFieldError.checkNotNull(
        channelTitle, r'VideoSnippet', 'channelTitle');
    BuiltValueNullFieldError.checkNotNull(tags, r'VideoSnippet', 'tags');
  }

  @override
  VideoSnippet rebuild(void Function(VideoSnippetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoSnippetBuilder toBuilder() => new VideoSnippetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoSnippet &&
        publishedAt == other.publishedAt &&
        channelId == other.channelId &&
        title == other.title &&
        description == other.description &&
        thumbnails == other.thumbnails &&
        channelTitle == other.channelTitle &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, publishedAt.hashCode), channelId.hashCode),
                        title.hashCode),
                    description.hashCode),
                thumbnails.hashCode),
            channelTitle.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoSnippet')
          ..add('publishedAt', publishedAt)
          ..add('channelId', channelId)
          ..add('title', title)
          ..add('description', description)
          ..add('thumbnails', thumbnails)
          ..add('channelTitle', channelTitle)
          ..add('tags', tags))
        .toString();
  }
}

class VideoSnippetBuilder
    implements Builder<VideoSnippet, VideoSnippetBuilder> {
  _$VideoSnippet? _$v;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  String? _channelId;
  String? get channelId => _$this._channelId;
  set channelId(String? channelId) => _$this._channelId = channelId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ThumbnailsBuilder? _thumbnails;
  ThumbnailsBuilder get thumbnails =>
      _$this._thumbnails ??= new ThumbnailsBuilder();
  set thumbnails(ThumbnailsBuilder? thumbnails) =>
      _$this._thumbnails = thumbnails;

  String? _channelTitle;
  String? get channelTitle => _$this._channelTitle;
  set channelTitle(String? channelTitle) => _$this._channelTitle = channelTitle;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  VideoSnippetBuilder();

  VideoSnippetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publishedAt = $v.publishedAt;
      _channelId = $v.channelId;
      _title = $v.title;
      _description = $v.description;
      _thumbnails = $v.thumbnails.toBuilder();
      _channelTitle = $v.channelTitle;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoSnippet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoSnippet;
  }

  @override
  void update(void Function(VideoSnippetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoSnippet build() => _build();

  _$VideoSnippet _build() {
    _$VideoSnippet _$result;
    try {
      _$result = _$v ??
          new _$VideoSnippet._(
              publishedAt: BuiltValueNullFieldError.checkNotNull(
                  publishedAt, r'VideoSnippet', 'publishedAt'),
              channelId: BuiltValueNullFieldError.checkNotNull(
                  channelId, r'VideoSnippet', 'channelId'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'VideoSnippet', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'VideoSnippet', 'description'),
              thumbnails: thumbnails.build(),
              channelTitle: BuiltValueNullFieldError.checkNotNull(
                  channelTitle, r'VideoSnippet', 'channelTitle'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thumbnails';
        thumbnails.build();

        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VideoSnippet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
