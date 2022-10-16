// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) => Thumbnails(
      standard: Thumbnail.fromJson(json['default'] as Map<String, dynamic>),
      medium: Thumbnail.fromJson(json['medium'] as Map<String, dynamic>),
      high: Thumbnail.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsToJson(Thumbnails instance) =>
    <String, dynamic>{
      'default': instance.standard,
      'medium': instance.medium,
      'high': instance.high,
    };
