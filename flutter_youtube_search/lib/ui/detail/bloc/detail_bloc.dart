import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_search/data/model/detail/youtube_video_error.dart';
import 'package:flutter_youtube_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_search/ui/detail/bloc/detail.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final YoutubeRepository _youtubeRepository;

  DetailBloc(this._youtubeRepository)
      : super(DetailState((b) => b..status = DetailStatus.initial)) {
    on<DetailVideoShowed>(_showDetail);
  }

  void _showDetail(DetailVideoShowed ev, Emitter<DetailState> em) async {
    em(state.rebuild((p0) => p0..status = DetailStatus.loading));

    try {
      final videoItem = await _youtubeRepository.fetchVideoInfo(id: ev.id);
      em(state.rebuild((p0) => p0
        ..status = DetailStatus.success
        ..videoItem.replace(videoItem)));
    } on YoutubeVideoError catch (e) {
      em(state.rebuild((p0) => p0
        ..status = DetailStatus.failure
        ..error = e.message));
    } on DataSourceNullException catch (e) {
      em(state.rebuild((p0) => p0
        ..status = DetailStatus.failure
        ..error = e.message));
    } on NoSuchVideoException catch (e) {
      em(state.rebuild((p0) => p0
        ..status = DetailStatus.failure
        ..error = e.message));
    } on Exception catch (_) {
      em(state.rebuild((p0) => p0
        ..status = DetailStatus.failure
        ..error = 'Something went wrong'));
    }
  }

  void showDetail({required String id}) {
    add(DetailVideoShowed((b) => b..id = id));
  }
}
