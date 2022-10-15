library search_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';

part 'search_state.g.dart';

enum SearchStatus {
  initial,
  loading,
  failure,
  success,
}

abstract class SearchState implements Built<SearchState, SearchStateBuilder> {
  BuiltList<SearchItem>? get searchResults;
  String? get error;
  bool? get hasReachedEndOfResults;
  SearchStatus? get status;
  String? get alertMessage;

  SearchState._();

  factory SearchState([Function(SearchStateBuilder b) updates]) = _$SearchState;
}
