library search_event;

import 'package:built_value/built_value.dart';

part 'search_event.g.dart';

abstract class SearchEvent {}

abstract class SearchInitiated extends SearchEvent
    implements Built<SearchInitiated, SearchInitiatedBuilder> {
  String get query;

  SearchInitiated._();

  factory SearchInitiated([Function(SearchInitiatedBuilder b) updates]) =
      _$SearchInitiated;
}

class SearchNextPageResultFetched extends SearchEvent {}
