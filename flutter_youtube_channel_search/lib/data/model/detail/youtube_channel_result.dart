import 'package:flutter_youtube_channel_search/data/model/detail/channel_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'youtube_channel_result.g.dart';

@JsonSerializable(explicitToJson: true)
class YoutubeChannelResult {
  final List<ChannelItem> items;

  YoutubeChannelResult({required this.items});

  factory YoutubeChannelResult.fromJson(Map<String, dynamic> json) =>
      _$YoutubeChannelResultFromJson(json);

  Map<String, dynamic> toJson() => _$YoutubeChannelResultToJson(this);
}
