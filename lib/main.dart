import 'package:flutter/material.dart';
import 'package:sushi_man_app/pages/intro_page.dart';
import 'package:sushi_man_app/pages/menu_page.dart';

void main() {
  runApp(const SushiMapApp());
}

class SushiMapApp extends StatelessWidget {
  const SushiMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 138, 60, 55)
      ),
      routes: {
        '/intropage':(context) => const IntroPage(),
        '/menupage':(context) => const MenuPage(),
      }
    );
  }
}
