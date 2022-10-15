import 'package:built_collection/built_collection.dart';
import 'package:flutter_youtube_search/data/model/detail/model_detail.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';
import 'package:flutter_youtube_search/data/network/youtube_data_source.dart';

class YoutubeRepository {
  final YoutubeDataSource _youtubeDataSource;

  String? _lastSearchQuery;
  String? _nextPageToken;

  YoutubeRepository(this._youtubeDataSource);

  Future<BuiltList<SearchItem>> searchVideos(String query) async {
    final searchResult = await _youtubeDataSource.searchVideos(query: query);

    if (searchResult == null) {
      throw DataSourceNullException();
    }

    if (searchResult.items.isEmpty) {
      throw NoSearchResultException();
    }

    _cacheValues(query: query, nextPageToken: searchResult.nextPageToken);

    return searchResult.items;
  }

  Future<BuiltList<SearchItem>> fetchNextResultPage() async {
    if (_lastSearchQuery == null) {
      throw SearchNotInitiatedException();
    }

    if (_nextPageToken == null) {
      throw NoNextPageTokenException();
    }

    final nextPageSearchResult = await _youtubeDataSource.searchVideos(
      query: _lastSearchQuery!,
      pageToken: _nextPageToken!,
    );

    if (nextPageSearchResult == null) {
      throw DataSourceNullException();
    }

    if (nextPageSearchResult.items.isEmpty) {
      throw NoSearchResultException();
    }

    _cacheValues(
      query: _lastSearchQuery,
      nextPageToken: nextPageSearchResult.nextPageToken,
    );

    return nextPageSearchResult.items;
  }

  Future<VideoItem> fetchVideoInfo({required String id}) async {
    final videoResponse = await _youtubeDataSource.fetchVideoInfo(id: id);

    if (videoResponse == null) {
      throw DataSourceNullException();
    }

    if (videoResponse.items.isEmpty) {
      throw NoSuchVideoException();
    }

    return videoResponse.items.first;
  }

  void _cacheValues({String? query, String? nextPageToken}) {
    _lastSearchQuery = query;
    _nextPageToken = nextPageToken;
  }
}

class DataSourceNullException implements Exception {
  final message = 'Data source returns null';
}

class NoSearchResultException implements Exception {
  final message = 'No results';
}

class SearchNotInitiatedException implements Exception {
  final message = 'Cannot get the next result page without searching first';
}

class NoNextPageTokenException implements Exception {}

class NoSuchVideoException implements Exception {
  final message = 'No such video';
}
