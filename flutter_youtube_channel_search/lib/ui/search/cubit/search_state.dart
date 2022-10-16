import 'package:equatable/equatable.dart';
import 'package:flutter_youtube_channel_search/data/model/search/search.dart';

enum SearchStatus {
  initial,
  loading,
  failure,
  success,
}

class SearchState extends Equatable {
  const SearchState({
    required this.status,
    this.items,
    this.error,
    this.hasReachedEndResult,
    this.alertMessage,
  });

  final SearchStatus status;
  final List<SearchItem>? items;
  final String? error;
  final bool? hasReachedEndResult;
  final String? alertMessage;

  @override
  List<Object?> get props => [
        status,
        items,
        error,
        hasReachedEndResult,
        alertMessage,
      ];

  SearchState copyWith({
    SearchStatus? status,
    List<SearchItem>? items,
    String? error,
    bool? hasReachedEndResult,
    String? alertMessage,
  }) {
    return SearchState(
      status: status ?? this.status,
      items: items ?? this.items,
      error: error ?? this.error,
      hasReachedEndResult: hasReachedEndResult ?? this.hasReachedEndResult,
      alertMessage: alertMessage ?? this.alertMessage,
    );
  }
}
