import 'package:flutter/material.dart';
import 'package:flutter_youtube_channel_search/data/model/search/search.dart';
import 'package:flutter_youtube_channel_search/ui/detail/detail_page.dart';

class ChannelItem extends StatefulWidget {
  const ChannelItem({Key? key, this.channelData}) : super(key: key);

  final SearchItem? channelData;

  @override
  State<ChannelItem> createState() => _ChannelItemState();
}

class _ChannelItemState extends State<ChannelItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (widget.channelData != null) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) =>
                  DetailPage(id: widget.channelData!.id.channelId)));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('No channel data')));
        }
      },
      isThreeLine: true,
      minLeadingWidth: 0,
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: widget.channelData != null
            ? NetworkImage(widget.channelData!.snippet.thumbnails.high.url)
            : const AssetImage('assets/no-image.png') as ImageProvider,
      ),
      title: Text(
        widget.channelData?.snippet.title ?? 'No Title',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        widget.channelData?.snippet.description ?? 'No Description',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
