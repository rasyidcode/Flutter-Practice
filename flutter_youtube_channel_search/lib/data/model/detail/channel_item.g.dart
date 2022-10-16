// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelItem _$ChannelItemFromJson(Map<String, dynamic> json) => ChannelItem(
      id: json['id'] as String,
      snippet: ChannelSnippet.fromJson(json['snippet'] as Map<String, dynamic>),
      statistics: ChannelStatistics.fromJson(
          json['statistics'] as Map<String, dynamic>),
      topicDetails:
          ChannelTopic.fromJson(json['topicDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChannelItemToJson(ChannelItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
      'statistics': instance.statistics,
      'topicDetails': instance.topicDetails,
    };
