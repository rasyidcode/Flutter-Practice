// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailState extends DetailState {
  @override
  final VideoItem? videoItem;
  @override
  final String? error;
  @override
  final DetailStatus? status;

  factory _$DetailState([void Function(DetailStateBuilder)? updates]) =>
      (new DetailStateBuilder()..update(updates))._build();

  _$DetailState._({this.videoItem, this.error, this.status}) : super._();

  @override
  DetailState rebuild(void Function(DetailStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailStateBuilder toBuilder() => new DetailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailState &&
        videoItem == other.videoItem &&
        error == other.error &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, videoItem.hashCode), error.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DetailState')
          ..add('videoItem', videoItem)
          ..add('error', error)
          ..add('status', status))
        .toString();
  }
}

class DetailStateBuilder implements Builder<DetailState, DetailStateBuilder> {
  _$DetailState? _$v;

  VideoItemBuilder? _videoItem;
  VideoItemBuilder get videoItem =>
      _$this._videoItem ??= new VideoItemBuilder();
  set videoItem(VideoItemBuilder? videoItem) => _$this._videoItem = videoItem;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DetailStatus? _status;
  DetailStatus? get status => _$this._status;
  set status(DetailStatus? status) => _$this._status = status;

  DetailStateBuilder();

  DetailStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _videoItem = $v.videoItem?.toBuilder();
      _error = $v.error;
      _status = $v.status;
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
              videoItem: _videoItem?.build(), error: error, status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'videoItem';
        _videoItem?.build();
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
