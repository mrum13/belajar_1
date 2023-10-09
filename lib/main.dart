import 'package:belajar/home_page.dart';
import 'package:belajar/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'second': (context) => const SecondPage(),
      },
      home: HomePage(),
    );
  }
}
