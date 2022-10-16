import 'package:json_annotation/json_annotation.dart';

part 'channel_snippet.g.dart';

@JsonSerializable()
class ChannelSnippet {
  ChannelSnippet();

  factory ChannelSnippet.fromJson(Map<String, dynamic> json) =>
      _$ChannelSnippetFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelSnippetToJson(this);
}
