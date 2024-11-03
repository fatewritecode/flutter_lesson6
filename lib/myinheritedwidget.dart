import 'package:flutter/material.dart';

class Myinheritedwidgetextends extends InheritedWidget {
  // содержит counter
  final int counter;
  // получает counter
  const Myinheritedwidgetextends(
      {Key? key, required this.counter, required Widget child})
      : super(key: key, child: child);

  // указывает было ли обновление данных в InheritedWidget
  @override
  bool updateShouldNotify(Myinheritedwidgetextends oldWidget) {
    // сравниваем value с предыдущим value если вернёт false значит ничего неизменилось

    return counter != oldWidget.counter;
  }
}
