// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailState extends DetailState {
  @override
  final bool isLoading;
  @override
  final VideoItem videoItem;
  @override
  final String error;

  factory _$DetailState([void Function(DetailStateBuilder)? updates]) =>
      (new DetailStateBuilder()..update(updates))._build();

  _$DetailState._(
      {required this.isLoading, required this.videoItem, required this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'DetailState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        videoItem, r'DetailState', 'videoItem');
    BuiltValueNullFieldError.checkNotNull(error, r'DetailState', 'error');
  }

  @override
  DetailState rebuild(void Function(DetailStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailStateBuilder toBuilder() => new DetailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailState &&
        isLoading == other.isLoading &&
        videoItem == other.videoItem &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isLoading.hashCode), videoItem.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DetailState')
          ..add('isLoading', isLoading)
          ..add('videoItem', videoItem)
          ..add('error', error))
        .toString();
  }
}

class DetailStateBuilder implements Builder<DetailState, DetailStateBuilder> {
  _$DetailState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  VideoItemBuilder? _videoItem;
  VideoItemBuilder get videoItem =>
      _$this._videoItem ??= new VideoItemBuilder();
  set videoItem(VideoItemBuilder? videoItem) => _$this._videoItem = videoItem;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DetailStateBuilder();

  DetailStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _videoItem = $v.videoItem.toBuilder();
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailState;
  }

  @override
  void update(void Function(DetailStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetailState build() => _build();

  _$DetailState _build() {
    _$DetailState _$result;
    try {
      _$result = _$v ??
          new _$DetailState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'DetailState', 'isLoading'),
              videoItem: videoItem.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'DetailState', 'error'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'videoItem';
        videoItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DetailState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
