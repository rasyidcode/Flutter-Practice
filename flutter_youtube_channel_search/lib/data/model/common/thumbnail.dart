import 'package:json_annotation/json_annotation.dart';

part 'thumbnail.g.dart';

@JsonSerializable()
class Thumbnail {
  final String url;
  final int? width;
  final int? height;

  Thumbnail({
    required this.url,
    this.width,
    this.height,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}
