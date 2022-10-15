library detail_state;

import 'package:built_value/built_value.dart';
import 'package:flutter_youtube_search/data/model/detail/model_detail.dart';

part 'detail_state.g.dart';

abstract class DetailState implements Built<DetailState, DetailStateBuilder> {
  bool get isLoading;
  VideoItem get videoItem;
  String get error;

  bool get isInitial => !isLoading && videoItem.id == '' && error == '';
  bool get isSuccessful => !isLoading && videoItem.id != '' && error == '';

  DetailState._();

  factory DetailState([Function(DetailStateBuilder b) updates]) = _$DetailState;

  factory DetailState.initial() {
    return DetailState((b) => b
      ..isLoading = false
      ..videoItem.replace(VideoItem((b) => b
        ..id = ''
        ..snippet.replace(VideoSnippet())))
      ..error = '');
  }

  factory DetailState.loading() {
    return DetailState((b) => b
      ..isLoading = true
      ..videoItem.replace(VideoItem((b) => b
        ..id = ''
        ..snippet.replace(VideoSnippet())))
      ..error = '');
  }

  factory DetailState.failure(String error) {
    return DetailState((b) => b
      ..isLoading = false
      ..videoItem.replace(VideoItem((b) => b
        ..id = ''
        ..snippet.replace(VideoSnippet())))
      ..error = error);
  }

  factory DetailState.success(VideoItem videoItem) {
    return DetailState((b) => b
      ..isLoading = false
      ..videoItem.replace(videoItem)
      ..error = '');
  }
}
