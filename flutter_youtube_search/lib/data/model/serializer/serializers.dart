library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_youtube_search/data/model/common/model_common.dart';
import 'package:flutter_youtube_search/data/model/detail/model_detail.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';

part 'serializers.g.dart';

@SerializersFor([
  YoutubeSearchResult,
  SearchItem,
  SearchSnippet,
  Id,
  Thumbnail,
  Thumbnails,
  YoutubeVideoResponse,
  VideoItem,
  VideoSnippet,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
