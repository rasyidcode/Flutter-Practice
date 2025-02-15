// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailVideoShowed extends DetailVideoShowed {
  @override
  final String id;

  factory _$DetailVideoShowed(
          [void Function(DetailVideoShowedBuilder)? updates]) =>
      (new DetailVideoShowedBuilder()..update(updates))._build();

  _$DetailVideoShowed._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DetailVideoShowed', 'id');
  }

  @override
  DetailVideoShowed rebuild(void Function(DetailVideoShowedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailVideoShowedBuilder toBuilder() =>
      new DetailVideoShowedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailVideoShowed && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DetailVideoShowed')..add('id', id))
        .toString();
  }
}

class DetailVideoShowedBuilder
    implements Builder<DetailVideoShowed, DetailVideoShowedBuilder> {
  _$DetailVideoShowed? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DetailVideoShowedBuilder();

  DetailVideoShowedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailVideoShowed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailVideoShowed;
  }

  @override
  void update(void Function(DetailVideoShowedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetailVideoShowed build() => _build();

  _$DetailVideoShowed _build() {
    final _$result = _$v ??
        new _$DetailVideoShowed._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DetailVideoShowed', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
