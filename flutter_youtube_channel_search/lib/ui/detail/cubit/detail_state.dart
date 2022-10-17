import 'package:equatable/equatable.dart';
import 'package:flutter_youtube_channel_search/data/model/detail/channel_item.dart';

enum DetailStatus {
  initial,
  loading,
  failure,
  success,
}

class DetailState extends Equatable {
  const DetailState({
    required this.status,
    this.item,
    this.error,
  });

  final DetailStatus status;
  final ChannelItem? item;
  final String? error;

  @override
  List<Object?> get props => [status, item, error];

  DetailState copyWith({
    DetailStatus? status,
    ChannelItem? item,
    String? error,
  }) {
    return DetailState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
