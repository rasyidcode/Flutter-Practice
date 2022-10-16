// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) => SearchItem(
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
      snippet: SearchSnippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchItemToJson(SearchItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
    };
