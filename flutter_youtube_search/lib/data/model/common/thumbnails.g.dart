// GENERATED CODE - DO NOT MODIFY BY HAND

part of thumbnails;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Thumbnails> _$thumbnailsSerializer = new _$ThumbnailsSerializer();

class _$ThumbnailsSerializer implements StructuredSerializer<Thumbnails> {
  @override
  final Iterable<Type> types = const [Thumbnails, _$Thumbnails];
  @override
  final String wireName = 'Thumbnails';

  @override
  Iterable<Object?> serialize(Serializers serializers, Thumbnails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'default',
      serializers.serialize(object.default_,
          specifiedType: const FullType(Thumbnail)),
      'medium',
      serializers.serialize(object.medium,
          specifiedType: const FullType(Thumbnail)),
      'high',
      serializers.serialize(object.high,
          specifiedType: const FullType(Thumbnail)),
    ];

    return result;
  }

  @override
  Thumbnails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThumbnailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'default':
          result.default_.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnail))! as Thumbnail);
          break;
        case 'medium':
          result.medium.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnail))! as Thumbnail);
          break;
        case 'high':
          result.high.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnail))! as Thumbnail);
          break;
      }
    }

    return result.build();
  }
}

class _$Thumbnails extends Thumbnails {
  @override
  final Thumbnail default_;
  @override
  final Thumbnail medium;
  @override
  final Thumbnail high;

  factory _$Thumbnails([void Function(ThumbnailsBuilder)? updates]) =>
      (new ThumbnailsBuilder()..update(updates))._build();

  _$Thumbnails._(
      {required this.default_, required this.medium, required this.high})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(default_, r'Thumbnails', 'default_');
    BuiltValueNullFieldError.checkNotNull(medium, r'Thumbnails', 'medium');
    BuiltValueNullFieldError.checkNotNull(high, r'Thumbnails', 'high');
  }

  @override
  Thumbnails rebuild(void Function(ThumbnailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailsBuilder toBuilder() => new ThumbnailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Thumbnails &&
        default_ == other.default_ &&
        medium == other.medium &&
        high == other.high;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, default_.hashCode), medium.hashCode), high.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Thumbnails')
          ..add('default_', default_)
          ..add('medium', medium)
          ..add('high', high))
        .toString();
  }
}

class ThumbnailsBuilder implements Builder<Thumbnails, ThumbnailsBuilder> {
  _$Thumbnails? _$v;

  ThumbnailBuilder? _default_;
  ThumbnailBuilder get default_ => _$this._default_ ??= new ThumbnailBuilder();
  set default_(ThumbnailBuilder? default_) => _$this._default_ = default_;

  ThumbnailBuilder? _medium;
  ThumbnailBuilder get medium => _$this._medium ??= new ThumbnailBuilder();
  set medium(ThumbnailBuilder? medium) => _$this._medium = medium;

  ThumbnailBuilder? _high;
  ThumbnailBuilder get high => _$this._high ??= new ThumbnailBuilder();
  set high(ThumbnailBuilder? high) => _$this._high = high;

  ThumbnailsBuilder();

  ThumbnailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _default_ = $v.default_.toBuilder();
      _medium = $v.medium.toBuilder();
      _high = $v.high.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thumbnails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Thumbnails;
  }

  @override
  void update(void Function(ThumbnailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Thumbnails build() => _build();

  _$Thumbnails _build() {
    _$Thumbnails _$result;
    try {
      _$result = _$v ??
          new _$Thumbnails._(
              default_: default_.build(),
              medium: medium.build(),
              high: high.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'default_';
        default_.build();
        _$failedField = 'medium';
        medium.build();
        _$failedField = 'high';
        high.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Thumbnails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
