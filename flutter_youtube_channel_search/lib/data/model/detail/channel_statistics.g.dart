// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelStatistics _$ChannelStatisticsFromJson(Map<String, dynamic> json) =>
    ChannelStatistics(
      viewCount: json['viewCount'] as String,
      subscriberCount: json['subscriberCount'] as String,
      videoCount: json['videoCount'] as String,
    );

Map<String, dynamic> _$ChannelStatisticsToJson(ChannelStatistics instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'subscriberCount': instance.subscriberCount,
      'videoCount': instance.videoCount,
    };
