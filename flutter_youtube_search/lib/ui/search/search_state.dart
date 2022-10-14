library search_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';

part 'search_state.g.dart';

abstract class SearchState implements Built<SearchState, SearchStateBuilder> {
  bool get isLoading;
  BuiltList<SearchItem> get searchResults;
  String get error;
  bool get hasReachedEndOfResults;

  SearchState._();

  factory SearchState([Function(SearchStateBuilder b) updates]) = _$SearchState;

  factory SearchState.initial() {
    return SearchState(
      (b) => b
        ..searchResults.replace(BuiltList<SearchItem>())
        ..error = ''
        ..hasReachedEndOfResults = false
        ..isLoading = false,
    );
  }

  factory SearchState.loading() {
    return SearchState(
      (b) => b
        ..searchResults.replace(BuiltList<SearchItem>())
        ..error = ''
        ..hasReachedEndOfResults = false
        ..isLoading = true,
    );
  }

  factory SearchState.failure(String error) {
    return SearchState(
      (b) => b
        ..searchResults.replace(BuiltList<SearchItem>())
        ..error = error
        ..hasReachedEndOfResults = false
        ..isLoading = false,
    );
  }

  factory SearchState.success(BuiltList<SearchItem> resultList) {
    return SearchState(
      (b) => b
        ..searchResults.replace(resultList)
        ..error = ''
        ..hasReachedEndOfResults = false
        ..isLoading = false,
    );
  }
}
