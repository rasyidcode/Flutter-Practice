import 'package:flutter_youtube_channel_search/data/model/search/thumbnails.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_snippet.g.dart';

@JsonSerializable()
class SearchSnippet {
  final String publishedAt;
  final String title;
  final String description;
  final Thumbnails thumbnails;

  SearchSnippet(
      {required this.publishedAt,
      required this.title,
      required this.description,
      required this.thumbnails});

  factory SearchSnippet.fromJson(Map<String, dynamic> json) =>
      _$SearchSnippetFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSnippetToJson(this);
}
