import 'dart:convert';
import 'dart:developer';

import 'package:flutter_youtube_search/data/model/detail/model_detail.dart';
import 'package:flutter_youtube_search/data/model/detail/youtube_video_error.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';
import 'package:flutter_youtube_search/data/network/api_key.dart';
import 'package:http/http.dart' as http;

const maxSearchResult = 5;

class YoutubeDataSource {
  final http.Client client;

  final String _searchBaseURL =
      'https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=$maxSearchResult'
      '&type=video&key=$apiKey';
  final String _videoBaseURL =
      'https://www.googleapis.com/youtube/v3/videos?part=snippet&key=$apiKey';

  YoutubeDataSource(this.client);

  Future<YoutubeSearchResult?> searchVideos({
    required String query,
    String pageToken = '',
  }) async {
    final urlRaw =
        '$_searchBaseURL&q=$query${pageToken.isNotEmpty ? '&pageToken=$pageToken' : ''}';
    final urlEncoded = Uri.encodeFull(urlRaw);
    final response = await client.get(Uri.parse(urlEncoded));

    if (response.statusCode != 200) {
      throw YoutubeSearchError(jsonDecode(response.body)['error']['message']);
    }

    return YoutubeSearchResult.fromJson(response.body);
  }

  Future<YoutubeVideoResponse?> fetchVideoInfo({required String id}) async {
    final url = '$_videoBaseURL&id=$id';
    final response = await client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw YoutubeVideoError(jsonDecode(response.body)['error']['message']);
    }

    return YoutubeVideoResponse.fromJson(response.body);
  }
}
