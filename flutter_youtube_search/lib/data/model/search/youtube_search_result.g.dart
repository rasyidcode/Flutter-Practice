// GENERATED CODE - DO NOT MODIFY BY HAND

part of youtube_search_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YoutubeSearchResult> _$youtubeSearchResultSerializer =
    new _$YoutubeSearchResultSerializer();

class _$YoutubeSearchResultSerializer
    implements StructuredSerializer<YoutubeSearchResult> {
  @override
  final Iterable<Type> types = const [
    YoutubeSearchResult,
    _$YoutubeSearchResult
  ];
  @override
  final String wireName = 'YoutubeSearchResult';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, YoutubeSearchResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SearchItem)])),
    ];
    Object? value;
    value = object.nextPageToken;
    if (value != null) {
      result
        ..add('nextPageToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  YoutubeSearchResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YoutubeSearchResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nextPageToken':
          result.nextPageToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchItem)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$YoutubeSearchResult extends YoutubeSearchResult {
  @override
  final String? nextPageToken;
  @override
  final BuiltList<SearchItem> items;

  factory _$YoutubeSearchResult(
          [void Function(YoutubeSearchResultBuilder)? updates]) =>
      (new YoutubeSearchResultBuilder()..update(updates))._build();

  _$YoutubeSearchResult._({this.nextPageToken, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'YoutubeSearchResult', 'items');
  }

  @override
  YoutubeSearchResult rebuild(
          void Function(YoutubeSearchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YoutubeSearchResultBuilder toBuilder() =>
      new YoutubeSearchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YoutubeSearchResult &&
        nextPageToken == other.nextPageToken &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextPageToken.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YoutubeSearchResult')
          ..add('nextPageToken', nextPageToken)
          ..add('items', items))
        .toString();
  }
}

class YoutubeSearchResultBuilder
    implements Builder<YoutubeSearchResult, YoutubeSearchResultBuilder> {
  _$YoutubeSearchResult? _$v;

  String? _nextPageToken;
  String? get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String? nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  ListBuilder<SearchItem>? _items;
  ListBuilder<SearchItem> get items =>
      _$this._items ??= new ListBuilder<SearchItem>();
  set items(ListBuilder<SearchItem>? items) => _$this._items = items;

  YoutubeSearchResultBuilder();

  YoutubeSearchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextPageToken = $v.nextPageToken;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YoutubeSearchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YoutubeSearchResult;
  }

  @override
  void update(void Function(YoutubeSearchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YoutubeSearchResult build() => _build();

  _$YoutubeSearchResult _build() {
    _$YoutubeSearchResult _$result;
    try {
      _$result = _$v ??
          new _$YoutubeSearchResult._(
              nextPageToken: nextPageToken, items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'YoutubeSearchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
