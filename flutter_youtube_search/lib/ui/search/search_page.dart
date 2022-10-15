import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_search/data/model/search/model_search.dart';
import 'package:flutter_youtube_search/ui/search/bloc/search.dart';
import 'package:flutter_youtube_search/ui/search/widget/centered_message.dart';
import 'package:flutter_youtube_search/ui/search/widget/search_bar.dart';
import 'package:kiwi/kiwi.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchBloc = KiwiContainer().resolve<SearchBloc>();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _searchBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _searchBloc,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
        appBar: AppBar(
          title: const SearchBar(),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.status == SearchStatus.initial) {
              return const CenteredMessage(
                message: 'Start Searching!',
                icon: Icons.ondemand_video,
              );
            }

            if (state.status == SearchStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.status == SearchStatus.success) {
              return _buildResultList(state, context);
            }

            return CenteredMessage(
              message: state.error ?? '[undefined_error]',
              icon: Icons.error_outline,
            );
          },
        ));
  }

  Widget _buildResultList(SearchState state, BuildContext context) {
    final searchResult = state.searchResults;

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) =>
          _handleScrollNotification(notification, context),
      child: ListView.builder(
          itemCount: _calculateListItemCount(state),
          controller: _scrollController,
          itemBuilder: (context, index) {
            if (searchResult == null) {
              return const CenteredMessage(
                message: '[search_result_null]',
                icon: Icons.error_outline,
              );
            }
            return index >= searchResult.length
                ? _buildLoaderListItem()
                : _buildVideoListItemCard(searchResult[index].snippet);
          }),
    );
  }

  int _calculateListItemCount(SearchState state) {
    final searchResult = state.searchResults;
    if (searchResult == null) {
      return 0;
    }

    bool? hasReach = state.hasReachedEndOfResults;
    if (hasReach != null && hasReach) {
      return searchResult.length;
    }

    return searchResult.length + 1;
  }

  bool _handleScrollNotification(
      ScrollNotification notification, BuildContext context) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      BlocProvider.of<SearchBloc>(context).searchNextPageVideo();
    }

    return false;
  }

  Widget _buildLoaderListItem() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildVideoListItemCard(SearchSnippet videoSnippet) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                videoSnippet.thumbnails.high.url,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              videoSnippet.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 5.0),
            Text(
              videoSnippet.description,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
