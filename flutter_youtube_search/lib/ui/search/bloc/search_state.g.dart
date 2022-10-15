// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchState extends SearchState {
  @override
  final BuiltList<SearchItem>? searchResults;
  @override
  final String? error;
  @override
  final bool? hasReachedEndOfResults;
  @override
  final SearchStatus? status;
  @override
  final String? alertMessage;

  factory _$SearchState([void Function(SearchStateBuilder)? updates]) =>
      (new SearchStateBuilder()..update(updates))._build();

  _$SearchState._(
      {this.searchResults,
      this.error,
      this.hasReachedEndOfResults,
      this.status,
      this.alertMessage})
      : super._();

  @override
  SearchState rebuild(void Function(SearchStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchStateBuilder toBuilder() => new SearchStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchState &&
        searchResults == other.searchResults &&
        error == other.error &&
        hasReachedEndOfResults == other.hasReachedEndOfResults &&
        status == other.status &&
        alertMessage == other.alertMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, searchResults.hashCode), error.hashCode),
                hasReachedEndOfResults.hashCode),
            status.hashCode),
        alertMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchState')
          ..add('searchResults', searchResults)
          ..add('error', error)
          ..add('hasReachedEndOfResults', hasReachedEndOfResults)
          ..add('status', status)
          ..add('alertMessage', alertMessage))
        .toString();
  }
}

class SearchStateBuilder implements Builder<SearchState, SearchStateBuilder> {
  _$SearchState? _$v;

  ListBuilder<SearchItem>? _searchResults;
  ListBuilder<SearchItem> get searchResults =>
      _$this._searchResults ??= new ListBuilder<SearchItem>();
  set searchResults(ListBuilder<SearchItem>? searchResults) =>
      _$this._searchResults = searchResults;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _hasReachedEndOfResults;
  bool? get hasReachedEndOfResults => _$this._hasReachedEndOfResults;
  set hasReachedEndOfResults(bool? hasReachedEndOfResults) =>
      _$this._hasReachedEndOfResults = hasReachedEndOfResults;

  SearchStatus? _status;
  SearchStatus? get status => _$this._status;
  set status(SearchStatus? status) => _$this._status = status;

  String? _alertMessage;
  String? get alertMessage => _$this._alertMessage;
  set alertMessage(String? alertMessage) => _$this._alertMessage = alertMessage;

  SearchStateBuilder();

  SearchStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchResults = $v.searchResults?.toBuilder();
      _error = $v.error;
      _hasReachedEndOfResults = $v.hasReachedEndOfResults;
      _status = $v.status;
      _alertMessage = $v.alertMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchState;
  }

  @override
  void update(void Function(SearchStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchState build() => _build();

  _$SearchState _build() {
    _$SearchState _$result;
    try {
      _$result = _$v ??
          new _$SearchState._(
              searchResults: _searchResults?.build(),
              error: error,
              hasReachedEndOfResults: hasReachedEndOfResults,
              status: status,
              alertMessage: alertMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchResults';
        _searchResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
