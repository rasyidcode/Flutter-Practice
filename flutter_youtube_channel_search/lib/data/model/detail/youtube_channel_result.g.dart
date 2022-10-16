// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_channel_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YoutubeChannelResult _$YoutubeChannelResultFromJson(
        Map<String, dynamic> json) =>
    YoutubeChannelResult(
      items: (json['items'] as List<dynamic>)
          .map((e) => ChannelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$YoutubeChannelResultToJson(
        YoutubeChannelResult instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
