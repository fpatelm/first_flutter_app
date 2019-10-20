import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome to FLutter"),
          ),
          body: Center(
            child: RandomWords(),
          ),
        ));
  }
}


class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final WordPair wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return Text(wordPair.asPascalCase),tyle: TextStyle(fontSize: 30);
  }
}