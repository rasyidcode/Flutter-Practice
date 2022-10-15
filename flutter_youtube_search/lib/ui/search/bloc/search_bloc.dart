import 'package:built_collection/built_collection.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';
import 'package:flutter_youtube_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_search/ui/search/bloc/search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final YoutubeRepository _youtubeRepository;

  SearchBloc(this._youtubeRepository)
      : super(SearchState((b) => b..status = SearchStatus.initial)) {
    on<SearchInitiated>(_searchInitiated);
    on<SearchNextPageResultFetched>(_searchNextPage);
  }

  void searchVideo(String query) {
    add(SearchInitiated((b) => b..query = query));
  }

  void searchNextPageVideo() {
    add(SearchNextPageResultFetched());
  }

  // handle search initiated event
  void _searchInitiated(SearchInitiated ev, Emitter<SearchState> em) async {
    em(state.rebuild((p0) => p0..status = SearchStatus.loading));

    try {
      final searchResult = await _youtubeRepository.searchVideos(ev.query);
      em(state.rebuild((p0) => p0
        ..status = SearchStatus.success
        ..searchResults.replace(searchResult)));
    } on YoutubeSearchError catch (e) {
      em(state.rebuild((p0) => p0
        ..error = e.message
        ..status = SearchStatus.failure));
    } on DataSourceNullException catch (e) {
      em(state.rebuild((p0) => p0
        ..error = e.message
        ..status = SearchStatus.failure));
    } on NoSearchResultException catch (e) {
      em(state.rebuild((p0) => p0
        ..error = e.message
        ..status = SearchStatus.failure));
    } on Exception catch (_) {
      em(state.rebuild((p0) => p0
        ..error = 'Something went wrong'
        ..status = SearchStatus.failure));
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

      em(state.rebuild((p0) => p0
        ..status = SearchStatus.success
        ..searchResults.replace(
            (state.searchResults ?? BuiltList<SearchItem>()) +
                nextPageSearchResult)));
    } on YoutubeSearchError catch (e) {
      em(state.rebuild((p0) => p0..alertMessage = e.message));
    } on SearchNotInitiatedException catch (e) {
      em(state.rebuild((p0) => p0..alertMessage = e.message));
    } on NoNextPageTokenException catch (_) {
      em(state.rebuild((p0) => p0
        ..hasReachedEndOfResults = true
        ..alertMessage = 'Has reached end of result'));
    } on DataSourceNullException catch (e) {
      em(state.rebuild((p0) => p0..alertMessage = e.message));
    } on Exception catch (_) {
      em(state.rebuild((p0) => p0
        ..alertMessage = 'Something went wrong'
        ..status = SearchStatus.failure));
    }
  }
}
