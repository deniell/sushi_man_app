import 'package:flutter/material.dart';
import 'package:sushi_man_app/pages/intro_page.dart';

void main() {
  runApp(const SushiMapApp());
}

class SushiMapApp extends StatelessWidget {
  const SushiMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
