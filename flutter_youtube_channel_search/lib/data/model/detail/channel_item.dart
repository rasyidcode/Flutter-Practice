import 'package:flutter_youtube_channel_search/data/model/detail/channel_snippet.dart';
import 'package:flutter_youtube_channel_search/data/model/detail/channel_statistics.dart';
import 'package:flutter_youtube_channel_search/data/model/detail/channel_topic.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_item.g.dart';

@JsonSerializable()
class ChannelItem {
  ChannelItem({
    required this.id,
    required this.snippet,
    required this.statistics,
    required this.topicDetails,
  });

  final String id;
  final ChannelSnippet snippet;
  final ChannelStatistics statistics;
  final ChannelTopic topicDetails;

  factory ChannelItem.fromJson(Map<String, dynamic> json) =>
      _$ChannelItemFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelItemToJson(this);
}
