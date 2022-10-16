import 'package:json_annotation/json_annotation.dart';

part 'id.g.dart';

@JsonSerializable()
class Id {
  final String channelId;

  Id({required this.channelId});

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}
