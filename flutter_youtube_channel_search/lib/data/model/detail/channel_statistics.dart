import 'package:json_annotation/json_annotation.dart';

part 'channel_statistics.g.dart';

@JsonSerializable()
class ChannelStatistics {
  ChannelStatistics();

  factory ChannelStatistics.fromJson(Map<String, dynamic> json) =>
      _$ChannelStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelStatisticsToJson(this);
}
