import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_channel_search/ui/search/cubit/search.dart';
import 'package:flutter_youtube_channel_search/ui/search/widget/channel_item.dart';

class ChannelList extends StatefulWidget {
  const ChannelList({Key? key, required this.state}) : super(key: key);

  final SearchState state;

  @override
  State<ChannelList> createState() => _ChannelListState();
}

class _ChannelListState extends State<ChannelList> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          BlocProvider.of<SearchCubit>(context).refreshList(),
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) =>
            _handleScrollNotification(notification, context),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _calculateListItemCount(widget.state),
          itemBuilder: (context, index) {
            if (widget.state.items == null) {
              return Container();
            }

            return index >= widget.state.items!.length
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ChannelItem(channelData: widget.state.items?[index]);
          },
        ),
      ),
    );
  }

  int _calculateListItemCount(SearchState state) {
    if (state.items?.length == null) {
      return 0;
    }

    bool? hasReach = state.hasReachedEndResult;
    if (hasReach != null && hasReach) {
      return state.items!.length;
    }

    return state.items!.length + 1;
  }

  bool _handleScrollNotification(
      ScrollNotification notification, BuildContext context) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      BlocProvider.of<SearchCubit>(context).searchNextPage();
    }

    return false;
  }
}
