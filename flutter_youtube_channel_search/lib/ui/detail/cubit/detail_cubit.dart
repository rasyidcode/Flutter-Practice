import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_channel_search/data/model/detail/exception/youtube_channel_error_exception.dart';
import 'package:flutter_youtube_channel_search/data/repository/exception/no_channel_found_exception.dart';
import 'package:flutter_youtube_channel_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_channel_search/ui/detail/cubit/detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit(this._youtubeRepository)
      : super(const DetailState(status: DetailStatus.initial));

  final YoutubeRepository _youtubeRepository;

  void getDetail(String id) async {
    emit(state.copyWith(status: DetailStatus.loading));

    try {
      final channelItem = await _youtubeRepository.getChannelDetail(id: id);
      emit(state.copyWith(
        status: DetailStatus.success,
        item: channelItem,
      ));
    } on YoutubeChannelErrorException catch (e) {
      emit(state.copyWith(
        status: DetailStatus.failure,
        error: e.message,
      ));
    } on NoChannelFoundException catch (e) {
      emit(state.copyWith(
        status: DetailStatus.failure,
        error: e.message,
      ));
    } on Exception catch (_) {
      emit(state.copyWith(
        status: DetailStatus.failure,
        error: 'Something went wrong',
      ));
    }
  }
}
