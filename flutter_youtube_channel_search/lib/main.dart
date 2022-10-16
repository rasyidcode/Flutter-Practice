import 'package:flutter/material.dart';
import 'package:flutter_youtube_channel_search/injection_container.dart';
import 'package:flutter_youtube_channel_search/ui/search/search_page.dart';

void main() {
  initKiwi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SearchPage(),
    );
  }
}
