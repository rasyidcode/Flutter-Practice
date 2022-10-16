import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_youtube_channel_search/ui/search/cubit/search.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: _controller.text.length,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (query) {
        BlocProvider.of<SearchCubit>(context).searchChannel(query: query);
      },
      controller: _controller,
      focusNode: _focusNode,
      decoration: InputDecoration(
        hintText: 'Search Channel',
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.black.withOpacity(0.1),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
