import 'package:json_annotation/json_annotation.dart';

part 'channel_statistics.g.dart';

@JsonSerializable()
class ChannelStatistics {
  ChannelStatistics({
    required this.viewCount,
    required this.subscriberCount,
    required this.videoCount,
  });

  final String viewCount;
  final String subscriberCount;
  final String videoCount;

  factory ChannelStatistics.fromJson(Map<String, dynamic> json) =>
      _$ChannelStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelStatisticsToJson(this);
}
