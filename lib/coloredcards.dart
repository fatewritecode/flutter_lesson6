import 'dart:math';

import 'package:flutter/material.dart';

class Coloredcards extends StatelessWidget {
  final int index;
  late Color color;
  late int card;

  Coloredcards({super.key, required this.index}) {
    switch (index) {
      case 1:
        color = Colors.green;
        card = 1;
        break;
      case 2:
        color = Colors.yellow;
        card = 2;
        break;
      case 3:
        color = Colors.red;
        card = 3;
        break;
      default:
        color = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100,
      height: 100,
      child: Text('№ $card', style: const TextStyle(fontSize: 20)),
    );
  }
}
