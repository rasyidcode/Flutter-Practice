import 'package:flutter_youtube_channel_search/data/model/search/id.dart';
import 'package:flutter_youtube_channel_search/data/model/search/search_snippet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_item.g.dart';

@JsonSerializable()
class SearchItem {
  final Id id;
  final SearchSnippet snippet;

  SearchItem({required this.id, required this.snippet});

  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);

  Map<String, dynamic> toJson() => _$SearchItemToJson(this);
}
