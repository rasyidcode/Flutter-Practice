// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YoutubeSearchResult _$YoutubeSearchResultFromJson(Map<String, dynamic> json) =>
    YoutubeSearchResult(
      nextPageToken: json['nextPageToken'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$YoutubeSearchResultToJson(
        YoutubeSearchResult instance) =>
    <String, dynamic>{
      'nextPageToken': instance.nextPageToken,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
