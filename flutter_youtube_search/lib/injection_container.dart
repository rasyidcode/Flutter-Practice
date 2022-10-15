import 'package:flutter_youtube_search/data/network/youtube_data_source.dart';
import 'package:flutter_youtube_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_search/ui/search/bloc/search.dart';
import 'package:kiwi/kiwi.dart';
import 'package:http/http.dart' as http;

void initKiwi() {
  KiwiContainer()
    ..registerInstance(http.Client())
    ..registerFactory((container) => YoutubeDataSource(container.resolve()))
    ..registerFactory((container) => YoutubeRepository(container.resolve()))
    ..registerFactory((container) => SearchBloc(container.resolve()));
}
