import 'package:flutter_youtube_channel_search/data/network/youtube_data_source.dart';
import 'package:flutter_youtube_channel_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_channel_search/ui/search/cubit/search.dart';
import 'package:kiwi/kiwi.dart';

import 'package:http/http.dart' as http;

void initKiwi() {
  KiwiContainer()
    ..registerInstance(http.Client())
    ..registerFactory((c) => YoutubeDataSource(c.resolve()))
    ..registerFactory((c) => YoutubeRepository(c.resolve()))
    ..registerFactory((c) => SearchCubit(c.resolve()));
}
