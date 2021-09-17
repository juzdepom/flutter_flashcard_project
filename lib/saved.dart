import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedSuggestions extends StatelessWidget {
  const SavedSuggestions({
    required this.saved,
  }) : super();

  final Set<WordPair> saved;

  @override
  Widget build(BuildContext context) {
    final tiles = saved.map(
      (WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: const TextStyle(fontSize: 18.0),
          ),
        );
      },
    );
    final divided = tiles.isNotEmpty
        ? ListTile.divideTiles(context: context, tiles: tiles).toList()
        : <Widget>[];
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}
