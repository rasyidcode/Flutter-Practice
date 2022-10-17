import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_channel_search/ui/detail/cubit/cubit.dart';
import 'package:kiwi/kiwi.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _detailCubit = KiwiContainer().resolve<DetailCubit>();

  @override
  void initState() {
    super.initState();

    _detailCubit.getDetail(widget.id);
  }

  @override
  void dispose() {
    _detailCubit.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailCubit>(
      create: (_) => _detailCubit,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: BlocBuilder<DetailCubit, DetailState>(
          builder: (context, state) {
            if (state.status == DetailStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.status == DetailStatus.failure) {
              return Center(
                child: Text(state.error ?? 'unknown error'),
              );
            }

            if (state.item == null) {
              return const Center(
                child: Text('No data found'),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Opacity(
                        opacity: state.item!.snippet.country != null ? 1 : 0,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Chip(
                            backgroundColor: Colors.red,
                            label: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Country : ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  TextSpan(
                                    text: state.item!.snippet.country,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                              state.item!.snippet.thumbnails.high.url,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    state.item!.snippet.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    state.item!.snippet.customUrl,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Colors.black38,
                        ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Views',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            statisticToReadableFormat(
                              state.item!.statistics.viewCount,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Subscribers',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            statisticToReadableFormat(
                              state.item!.statistics.subscriberCount,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Total Video',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            statisticToReadableFormat(
                              state.item!.statistics.videoCount,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      state.item!.snippet.description,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Spacer(),
                  Chip(
                    backgroundColor: Colors.teal,
                    label: Text(
                      stringToDate(state.item!.snippet.publishedAt),
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String stringToDate(String datetime) {
    var date = DateTime.parse(datetime);
    return 'Published At : ${date.year}-${date.month.toString().length == 1 ? '0${date.month}' : '${date.month}'}-${date.day.toString().length == 1 ? '0${date.day}' : '${date.day}'}';
  }

  String statisticToReadableFormat(String count) {
    if (count.length >= 10) {
      double num = int.parse(count) / 1000000000;

      return '${num.toStringAsFixed(1)}b';
    }

    if (count.length >= 7) {
      double num = int.parse(count) / 1000000;

      return '${num.toStringAsFixed(1)}m';
    }

    if (count.length >= 4) {
      double num = int.parse(count) / 1000;

      return '${num.toStringAsFixed(1)}k';
    }

    return count;
  }
}
