import 'package:flutter_youtube_channel_search/data/model/common/thumbnails.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_snippet.g.dart';

@JsonSerializable()
class ChannelSnippet {
  ChannelSnippet({
    required this.title,
    required this.description,
    required this.customUrl,
    required this.publishedAt,
    required this.thumbnails,
    this.country,
  });

  final String title;
  final String description;
  final String customUrl;
  final String publishedAt;
  final Thumbnails thumbnails;
  final String? country;

  factory ChannelSnippet.fromJson(Map<String, dynamic> json) =>
      _$ChannelSnippetFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelSnippetToJson(this);
}
