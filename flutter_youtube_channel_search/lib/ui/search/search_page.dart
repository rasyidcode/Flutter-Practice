import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_channel_search/ui/search/cubit/search.dart';
import 'package:flutter_youtube_channel_search/ui/search/widget/channel_list.dart';
import 'package:flutter_youtube_channel_search/ui/search/widget/search_field.dart';
import 'package:kiwi/kiwi.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchCubit = KiwiContainer().resolve<SearchCubit>();

  @override
  void dispose() {
    _searchCubit.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _searchCubit,
      child: BlocListener<SearchCubit, SearchState>(
          listener: (context, state) {
            if (state.status == SearchStatus.failure &&
                state.alertMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.alertMessage!),
                ),
              );
            }
          },
          child: _buildScaffold()),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Channel List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SearchField(),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Result',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 8.0),
            _buildListChannel()
          ],
        ),
      ),
    );
  }

  Expanded _buildListChannel() {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state.status == SearchStatus.initial) {
            return const Center(
              child: Text('Look for channels...'),
            );
          }

          if (state.status == SearchStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.status == SearchStatus.failure && state.error != null) {
            return Center(
              child: Text(state.error!),
            );
          }

          return ChannelList(state: state);
        },
      ),
    );
  }
}
