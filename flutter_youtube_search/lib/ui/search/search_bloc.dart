import 'package:flutter_youtube_search/data/model/search/model_search.dart';
import 'package:flutter_youtube_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_search/ui/search/search_event.dart';
import 'package:flutter_youtube_search/ui/search/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final YoutubeRepository _youtubeRepository;

  SearchBloc(this._youtubeRepository) : super(SearchState.initial()) {
    on<SearchInitiated>(_searchInitiated);
    on<SearchNextPageResultFetched>(_searchNextPage);
  }

  // handle search initiated event
  void _searchInitiated(SearchInitiated ev, Emitter<SearchState> em) async {
    em(SearchState.loading());

    try {
      final searchResult = await _youtubeRepository.searchVideos(ev.query);
      em(SearchState.success(searchResult));
    } on YoutubeSearchError catch (e) {
      em(SearchState.failure(e.message));
    } on NoSearchResultException catch (e) {
      em(SearchState.failure(e.message));
    }
  }

  // handle search next page event
  void _searchNextPage(
    SearchNextPageResultFetched ev,
    Emitter<SearchState> em,
  ) async {
    try {
      final nextPageSearchResult =
          await _youtubeRepository.fetchNextResultPage();
      em(SearchState.success(state.searchResults + nextPageSearchResult));
    } on NoNextPageTokenException catch (_) {
      em(state.rebuild((p0) => p0..hasReachedEndOfResults = true));
    } on SearchNotInitiatedException catch (e) {
      em(SearchState.failure(e.message));
    } on YoutubeSearchError catch (e) {
      em(SearchState.failure(e.message));
    }
  }
}
