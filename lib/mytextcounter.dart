import 'package:flutter/material.dart';

import 'myinheritedwidget.dart';

class Mytextcounter extends StatelessWidget {
  const Mytextcounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context
            .dependOnInheritedWidgetOfExactType<Myinheritedwidgetextends>()
            ?.counter ??
        0;
    return Text(
      '$counter',
      style: const TextStyle(fontSize: 20),
    );
  }
}
