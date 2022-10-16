// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSnippet _$SearchSnippetFromJson(Map<String, dynamic> json) =>
    SearchSnippet(
      publishedAt: json['publishedAt'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchSnippetToJson(SearchSnippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
    };
