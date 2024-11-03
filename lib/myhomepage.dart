import 'package:flutter/material.dart';
import 'package:flutter_lesson6/mytext.dart';

import 'coloredcards.dart';
import 'myinheritedwidget.dart';
import 'mytextcounter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _coloredcards = <Widget>[];
  void initState() {
    super.initState();
    _allcoloredcards();
  }

  void _allcoloredcards() {
    int index = 0;
    _coloredcards = List.generate(
      3,
      (_) => Coloredcards(key: UniqueKey(), index: ++index),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _coloredcards.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(
            child: Text(widget.title),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _coloredcards),
            Mytext(),
            Myinheritedwidgetextends(
                counter: _counter, child: const Mytextcounter()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
