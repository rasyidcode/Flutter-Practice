import 'package:json_annotation/json_annotation.dart';

part 'channel_topic.g.dart';

@JsonSerializable()
class ChannelTopic {
  ChannelTopic();

  factory ChannelTopic.fromJson(Map<String, dynamic> json) =>
      _$ChannelTopicFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelTopicToJson(this);
}
