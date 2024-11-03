import 'package:flutter/material.dart';
import 'myhomepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Этот виджет является корнем вашего приложения.
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Первая программа Flutter',
      // отключает подпись дебаг
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,

      ),
      // базовый виджет, который будет отображаться при загрузке
      home: const MyHomePage(title: 'Главная страница'),
    );
  }
}

