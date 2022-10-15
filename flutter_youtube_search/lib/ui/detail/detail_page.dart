import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_search/data/model/detail/model_detail.dart';
import 'package:flutter_youtube_search/ui/detail/bloc/detail.dart';
import 'package:flutter_youtube_search/ui/search/widget/centered_message.dart';
import 'package:kiwi/kiwi.dart';

class DetailPage extends StatefulWidget {
  final String videoId;
  const DetailPage({Key? key, required this.videoId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _detailBloc = KiwiContainer().resolve<DetailBloc>();

  @override
  void initState() {
    _detailBloc.showDetail(id: widget.videoId);
    super.initState();
  }

  @override
  void dispose() {
    _detailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _detailBloc,
      child: Scaffold(
        body: BlocBuilder<DetailBloc, DetailState>(
          builder: _buildScaffoldContent,
        ),
      ),
    );
  }

  Widget _buildScaffoldContent(BuildContext context, DetailState state) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 178,
          pinned: true,
          flexibleSpace: _buildSliverAppBarContent(state),
        ),
        _buildPageBody(state),
      ],
    );
  }

  FlexibleSpaceBar _buildSliverAppBarContent(DetailState state) {
    if (state.status == DetailStatus.loading) {
      return const FlexibleSpaceBar();
    }

    if (state.status == DetailStatus.success) {
      final videoItem = state.videoItem;

      if (videoItem == null) {
        return const FlexibleSpaceBar();
      }

      return FlexibleSpaceBar(
        title: Text(
          videoItem.snippet.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              videoItem.snippet.thumbnails.high.url,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            )
          ],
        ),
      );
    }

    return FlexibleSpaceBar(
      background: CenteredMessage(
        message: state.error ?? 'undefined',
        icon: Icons.error_outline,
      ),
    );
  }

  Widget _buildPageBody(DetailState state) {
    if (state.status == DetailStatus.loading) {
      return const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.status == DetailStatus.success) {
      final videoItem = state.videoItem;

      if (videoItem == null) {
        return const FlexibleSpaceBar();
      }

      return _buildVideoDetailList(videoItem.snippet);
    }

    return SliverFillRemaining(
      child: CenteredMessage(
        message: state.error ?? 'undefined',
        icon: Icons.error_outline,
      ),
    );
  }

  Widget _buildVideoDetailList(VideoSnippet videoSnippet) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            const SizedBox(height: 5),
            Text(
              videoSnippet.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 2,
                child: Wrap(
                  spacing: 10,
                  children: _getTagsAsChipWidgets(videoSnippet),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Description',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 5),
            Text(
              videoSnippet.description,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _getTagsAsChipWidgets(VideoSnippet videoSnippet) {
    return videoSnippet.tags.map((p0) => Chip(label: Text(p0))).toList();
  }
}
