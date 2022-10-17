import 'package:flutter_youtube_channel_search/data/model/common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'thumbnails.g.dart';

@JsonSerializable()
class Thumbnails {
  @JsonKey(name: 'default')
  final Thumbnail standard;
  final Thumbnail medium;
  final Thumbnail high;

  Thumbnails(
      {required this.standard, required this.medium, required this.high});

  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailsToJson(this);
}
