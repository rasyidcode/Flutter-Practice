import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_search/data/model/detail/youtube_video_error.dart';
import 'package:flutter_youtube_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_search/ui/detail/bloc/detail.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final YoutubeRepository _youtubeRepository;

  DetailBloc(this._youtubeRepository) : super(DetailState.initial()) {
    on<DetailVideoShowed>(_showDetail);
  }

  void _showDetail(DetailVideoShowed ev, Emitter<DetailState> em) async {
    em(DetailState.loading());

    try {
      final videoItem = await _youtubeRepository.fetchVideoInfo(id: ev.id);
      em(DetailState.success(videoItem));
    } on YoutubeVideoError catch (e) {
      em(DetailState.failure(e.message));
    } on DataSourceNullException catch (e) {
      em(DetailState.failure(e.message));
    } on NoSuchVideoException catch (e) {
      em(DetailState.failure(e.message));
    }
  }

  void showDetail({required String id}) {
    add(DetailVideoShowed((b) => b..id = id));
  }
}
