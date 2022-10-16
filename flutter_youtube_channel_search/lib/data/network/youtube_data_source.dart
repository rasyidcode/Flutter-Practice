import 'dart:convert';

import 'package:flutter_youtube_channel_search/data/model/search/exception/youtube_search_error_exception.dart';
import 'package:flutter_youtube_channel_search/data/model/search/search.dart';
import 'package:flutter_youtube_channel_search/data/network/api_config.dart';
import 'package:http/http.dart' as http;

class YoutubeDataSource {
  final http.Client client;

  YoutubeDataSource(this.client);

  Future<YoutubeSearchResult> searchChannel({
    required String query,
    String? pageToken,
  }) async {
    final urlRaw =
        '$apiUrl&q=$query${pageToken != null ? '&pageToken=$pageToken' : ''}';
    final urlEncoded = Uri.encodeFull(urlRaw);
    final response = await client.get(Uri.parse(urlEncoded));

    if (response.statusCode != 200) {
      throw YoutubeSearchErrorException(
          jsonDecode(response.body)['error']['message']);
    }

    return YoutubeSearchResult.fromJson(jsonDecode(response.body));
  }
}
