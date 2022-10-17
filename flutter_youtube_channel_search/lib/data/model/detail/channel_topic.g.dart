// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelTopic _$ChannelTopicFromJson(Map<String, dynamic> json) => ChannelTopic(
      topicCategories: (json['topicCategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChannelTopicToJson(ChannelTopic instance) =>
    <String, dynamic>{
      'topicCategories': instance.topicCategories,
    };
