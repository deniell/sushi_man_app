import 'package:flutter/material.dart';
import 'package:sushi_man_app/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    // promo message
                    Text('Get 32% Promo'),

                    // redeem button
                    Button(text: 'Redeen',
                    )
                  ],
                ),

                // image
              ],
            ),
          )

          // search bar

          // menu list

          // popular food
        ],
      ),
    );
  }
}
