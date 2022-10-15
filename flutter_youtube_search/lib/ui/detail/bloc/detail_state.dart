library detail_state;

import 'package:built_value/built_value.dart';
import 'package:flutter_youtube_search/data/model/detail/model_detail.dart';

part 'detail_state.g.dart';

enum DetailStatus {
  initial,
  loading,
  failure,
  success,
}

abstract class DetailState implements Built<DetailState, DetailStateBuilder> {
  VideoItem? get videoItem;
  String? get error;
  DetailStatus? get status;

  DetailState._();

  factory DetailState([Function(DetailStateBuilder b) updates]) = _$DetailState;
}
