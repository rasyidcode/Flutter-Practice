import 'package:flutter_youtube_channel_search/data/model/detail/channel_item.dart';
import 'package:flutter_youtube_channel_search/data/model/search/search.dart';
import 'package:flutter_youtube_channel_search/data/network/youtube_data_source.dart';
import 'package:flutter_youtube_channel_search/data/repository/exception/exception.dart';
import 'package:flutter_youtube_channel_search/data/repository/exception/no_channel_found_exception.dart';

class YoutubeRepository {
  final YoutubeDataSource _youtubeDataSource;

  String? _lastSearchQuery;
  String? _nextPageToken;

  YoutubeRepository(this._youtubeDataSource);

  Future<List<SearchItem>> searchChannel({required String query}) async {
    final searchResult = await _youtubeDataSource.searchChannel(query: query);

    if (searchResult.items.isEmpty) {
      throw NoSearchResultException();
    }

    _cacheValues(query: query, nextPageToken: searchResult.nextPageToken);

    return searchResult.items;
  }

  Future<List<SearchItem>> searchNextPage() async {
    if (_lastSearchQuery == null) {
      throw SearchNotInitiatedException();
    }

    if (_nextPageToken == null) {
      throw NoNextPageTokenException();
    }

    final searchResult = await _youtubeDataSource.searchChannel(
      query: _lastSearchQuery!,
      pageToken: _nextPageToken,
    );

    if (searchResult.items.isEmpty) {
      throw NoSearchResultException();
    }

    _cacheValues(
        query: _lastSearchQuery, nextPageToken: searchResult.nextPageToken);

    return searchResult.items;
  }

  Future<ChannelItem> getChannelDetail({required String id}) async {
    final channelResult = await _youtubeDataSource.getChannelDetail(id: id);

    if (channelResult.items.isEmpty) {
      throw NoChannelFoundException();
    }

    return channelResult.items.first;
  }

  void _cacheValues({String? query, String? nextPageToken}) {
    _lastSearchQuery = query;
    _nextPageToken = nextPageToken;
  }
}
