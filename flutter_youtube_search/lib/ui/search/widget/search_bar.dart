import 'package:flutter/material.dart';
import 'package:flutter_youtube_search/ui/search/widget/search_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 5.0),
        child: SearchField(),
      ),
    );
  }
}
