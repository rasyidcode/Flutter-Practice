import 'package:flutter/material.dart';
import 'package:flutter_youtube_search/injection_container.dart';
import 'package:flutter_youtube_search/ui/search/search_page.dart';

void main() {
  initKiwi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
      ),
      home: const SearchPage(),
    );
  }
}
