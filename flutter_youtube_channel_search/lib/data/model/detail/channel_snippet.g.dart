// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelSnippet _$ChannelSnippetFromJson(Map<String, dynamic> json) =>
    ChannelSnippet(
      title: json['title'] as String,
      description: json['description'] as String,
      customUrl: json['customUrl'] as String,
      publishedAt: json['publishedAt'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      country: json['country'] as String?,
    );

Map<String, dynamic> _$ChannelSnippetToJson(ChannelSnippet instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'customUrl': instance.customUrl,
      'publishedAt': instance.publishedAt,
      'thumbnails': instance.thumbnails,
      'country': instance.country,
    };
