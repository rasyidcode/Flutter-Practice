import 'package:flutter_youtube_channel_search/data/model/search/search_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'youtube_search_result.g.dart';

@JsonSerializable(explicitToJson: true)
class YoutubeSearchResult {
  final String? nextPageToken;
  final List<SearchItem> items;

  YoutubeSearchResult({required this.nextPageToken, required this.items});

  factory YoutubeSearchResult.fromJson(Map<String, dynamic> json) =>
      _$YoutubeSearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$YoutubeSearchResultToJson(this);
}
