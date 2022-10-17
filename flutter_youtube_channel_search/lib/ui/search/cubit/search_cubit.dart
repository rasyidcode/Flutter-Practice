import 'package:bloc/bloc.dart';
import 'package:flutter_youtube_channel_search/data/model/search/exception/exception.dart';
import 'package:flutter_youtube_channel_search/data/repository/exception/exception.dart';
import 'package:flutter_youtube_channel_search/data/repository/youtube_repository.dart';
import 'package:flutter_youtube_channel_search/ui/search/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._youtubeRepository)
      : super(const SearchState(status: SearchStatus.initial));

  final YoutubeRepository _youtubeRepository;

  void searchChannel({required String query}) async {
    emit(state.copyWith(status: SearchStatus.loading));

    try {
      final searchItems = await _youtubeRepository.searchChannel(query: query);
      emit(state.copyWith(
        status: SearchStatus.success,
        items: searchItems,
      ));
    } on YoutubeSearchErrorException catch (e) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        error: e.message,
      ));
    } on NoSearchResultException catch (e) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        error: e.message,
      ));
    } on Exception catch (_) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        error: 'Something went wrong',
      ));
    }
  }

  void searchNextPage() async {
    try {
      final searchItems = await _youtubeRepository.searchNextPage();

      if (state.items == null) {
        emit(state.copyWith(
          status: SearchStatus.failure,
          alertMessage: 'Items is null',
        ));
      } else {
        emit(state.copyWith(
          status: SearchStatus.success,
          items: [...state.items!, ...searchItems],
        ));
      }
    } on YoutubeSearchErrorException catch (e) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        alertMessage: e.message,
      ));
    } on NoSearchResultException catch (e) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        hasReachedEndResult: true,
        alertMessage: e.message,
      ));
    } on Exception catch (_) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        alertMessage: 'Something went wrong',
      ));
    }
  }

  void refreshList() async {
    emit(state.copyWith(status: SearchStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(
      status: SearchStatus.success,
      items: state.items,
    ));
  }
}
