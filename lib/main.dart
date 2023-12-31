import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_man_app/models/shop.dart';
import 'package:sushi_man_app/pages/cart_page.dart';
import 'package:sushi_man_app/pages/intro_page.dart';
import 'package:sushi_man_app/pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const SushiMapApp(),
    )
  );
}

class SushiMapApp extends StatelessWidget {
  const SushiMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 138, 60, 55),
        buttonColor: const Color.fromARGB(109, 140, 94, 91),
      ),
      routes: {
        '/intropage':(context) => const IntroPage(),
        '/menupage':(context) => const MenuPage(),
        '/cartpage':(context) => const CartPage(),
      }
    );
  }
}
