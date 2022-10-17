import 'dart:convert';

import 'package:flutter_youtube_channel_search/data/model/detail/detail.dart';
import 'package:flutter_youtube_channel_search/data/model/detail/exception/exception.dart';
import 'package:flutter_youtube_channel_search/data/model/search/exception/youtube_search_error_exception.dart';
import 'package:flutter_youtube_channel_search/data/model/search/search.dart';
import 'package:flutter_youtube_channel_search/data/network/api_config.dart';
import 'package:http/http.dart' as http;

class YoutubeDataSource {
  final http.Client client;

  static const apiMaxResult = 10;
  static const String _searchURL =
      '$apiBaseUrl/search?key=$apiKey&maxResults=$apiMaxResult&part=snippet&type=channel';
  static const String _detailURL =
      '$apiBaseUrl/channels?key=$apiKey&part=snippet,statistics,topicDetails';

  YoutubeDataSource(this.client);

  Future<YoutubeSearchResult> searchChannel({
    required String query,
    String? pageToken,
  }) async {
    final urlRaw =
        '$_searchURL&q=$query${pageToken != null ? '&pageToken=$pageToken' : ''}';
    final urlEncoded = Uri.encodeFull(urlRaw);
    final response = await client.get(Uri.parse(urlEncoded));

    if (response.statusCode != 200) {
      throw YoutubeSearchErrorException(
          jsonDecode(response.body)['error']['message']);
    }

    return YoutubeSearchResult.fromJson(jsonDecode(response.body));
  }

  Future<YoutubeChannelResult> getChannelDetail({required String id}) async {
    final urlRaw = '$_detailURL&id=$id';
    final response = await client.get(Uri.parse(urlRaw));

    if (response.statusCode != 200) {
      throw YoutubeChannelErrorException(
          jsonDecode(response.body)['error']['message']);
    }

    return YoutubeChannelResult.fromJson(jsonDecode(response.body));
  }
}
