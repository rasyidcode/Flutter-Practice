import 'package:flutter_youtube_search/data/model/search/youtube_search_result.dart';
import 'package:flutter_youtube_search/data/network/api_key.dart';
import 'package:http/http.dart' as http;

const maxSearchResult = 5;

class YoutubeDataSource {
  final http.Client client;

  final String _searchBaseURL =
      'https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=$maxSearchResult' +
          '&type=video&key=$apiKey';

  YoutubeDataSource(this.client);

  Future<YoutubeSearchResult> searchVideos(
      {required String query, String pageToken = ''}) async {}
}
