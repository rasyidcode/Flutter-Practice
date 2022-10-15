library detail_event;

import 'package:built_value/built_value.dart';

part 'detail_event.g.dart';

abstract class DetailEvent {}

abstract class DetailVideoShowed extends DetailEvent
    implements Built<DetailVideoShowed, DetailVideoShowedBuilder> {
  String get id;

  DetailVideoShowed._();

  factory DetailVideoShowed([Function(DetailVideoShowedBuilder b) updates]) =
      _$DetailVideoShowed;
}
