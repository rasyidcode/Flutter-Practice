// GENERATED CODE - DO NOT MODIFY BY HAND

part of video_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoItem> _$videoItemSerializer = new _$VideoItemSerializer();

class _$VideoItemSerializer implements StructuredSerializer<VideoItem> {
  @override
  final Iterable<Type> types = const [VideoItem, _$VideoItem];
  @override
  final String wireName = 'VideoItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideoItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'snippet',
      serializers.serialize(object.snippet,
          specifiedType: const FullType(VideoSnippet)),
    ];

    return result;
  }

  @override
  VideoItem deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'snippet':
          result.snippet.replace(serializers.deserialize(value,
              specifiedType: const FullType(VideoSnippet))! as VideoSnippet);
          break;
      }
    }

    return result.build();
  }
}

class _$VideoItem extends VideoItem {
  @override
  final String id;
  @override
  final VideoSnippet snippet;

  factory _$VideoItem([void Function(VideoItemBuilder)? updates]) =>
      (new VideoItemBuilder()..update(updates))._build();

  _$VideoItem._({required this.id, required this.snippet}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'VideoItem', 'id');
    BuiltValueNullFieldError.checkNotNull(snippet, r'VideoItem', 'snippet');
  }

  @override
  VideoItem rebuild(void Function(VideoItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoItemBuilder toBuilder() => new VideoItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoItem && id == other.id && snippet == other.snippet;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), snippet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoItem')
          ..add('id', id)
          ..add('snippet', snippet))
        .toString();
  }
}

class VideoItemBuilder implements Builder<VideoItem, VideoItemBuilder> {
  _$VideoItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  VideoSnippetBuilder? _snippet;
  VideoSnippetBuilder get snippet =>
      _$this._snippet ??= new VideoSnippetBuilder();
  set snippet(VideoSnippetBuilder? snippet) => _$this._snippet = snippet;

  VideoItemBuilder();

  VideoItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _snippet = $v.snippet.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoItem;
  }

  @override
  void update(void Function(VideoItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoItem build() => _build();

  _$VideoItem _build() {
    _$VideoItem _$result;
    try {
      _$result = _$v ??
          new _$VideoItem._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'VideoItem', 'id'),
              snippet: snippet.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snippet';
        snippet.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VideoItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
