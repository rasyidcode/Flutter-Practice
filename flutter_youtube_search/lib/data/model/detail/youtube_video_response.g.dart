// GENERATED CODE - DO NOT MODIFY BY HAND

part of youtube_video_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YoutubeVideoResponse> _$youtubeVideoResponseSerializer =
    new _$YoutubeVideoResponseSerializer();

class _$YoutubeVideoResponseSerializer
    implements StructuredSerializer<YoutubeVideoResponse> {
  @override
  final Iterable<Type> types = const [
    YoutubeVideoResponse,
    _$YoutubeVideoResponse
  ];
  @override
  final String wireName = 'YoutubeVideoResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, YoutubeVideoResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VideoItem)])),
    ];

    return result;
  }

  @override
  YoutubeVideoResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YoutubeVideoResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VideoItem)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$YoutubeVideoResponse extends YoutubeVideoResponse {
  @override
  final BuiltList<VideoItem> items;

  factory _$YoutubeVideoResponse(
          [void Function(YoutubeVideoResponseBuilder)? updates]) =>
      (new YoutubeVideoResponseBuilder()..update(updates))._build();

  _$YoutubeVideoResponse._({required this.items}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'YoutubeVideoResponse', 'items');
  }

  @override
  YoutubeVideoResponse rebuild(
          void Function(YoutubeVideoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YoutubeVideoResponseBuilder toBuilder() =>
      new YoutubeVideoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YoutubeVideoResponse && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YoutubeVideoResponse')
          ..add('items', items))
        .toString();
  }
}

class YoutubeVideoResponseBuilder
    implements Builder<YoutubeVideoResponse, YoutubeVideoResponseBuilder> {
  _$YoutubeVideoResponse? _$v;

  ListBuilder<VideoItem>? _items;
  ListBuilder<VideoItem> get items =>
      _$this._items ??= new ListBuilder<VideoItem>();
  set items(ListBuilder<VideoItem>? items) => _$this._items = items;

  YoutubeVideoResponseBuilder();

  YoutubeVideoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YoutubeVideoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YoutubeVideoResponse;
  }

  @override
  void update(void Function(YoutubeVideoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YoutubeVideoResponse build() => _build();

  _$YoutubeVideoResponse _build() {
    _$YoutubeVideoResponse _$result;
    try {
      _$result = _$v ?? new _$YoutubeVideoResponse._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'YoutubeVideoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
