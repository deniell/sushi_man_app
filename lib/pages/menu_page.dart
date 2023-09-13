import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_man_app/components/button.dart';
import 'package:sushi_man_app/components/food_tile.dart';
import 'package:sushi_man_app/models/food.dart';
import 'package:sushi_man_app/pages/food_details_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List<Food> foodMenu = [
    // salmon sushi
    const Food(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'assets/images/salmon_sushi.png',
      rating: '4.9',
    ),

    // tuna
    const Food(
      name: 'Tuna Sushi',
      price: '23.00',
      imagePath: 'assets/images/tuna.png',
      rating: '4.3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    // redeem button
                    Button(
                      text: 'Redeem',
                      onTap: () {},
                    )
                  ],
                ),

                // image
                Image.asset(
                  'assets/images/many_sushi.png',
                  height: 100,
                )
              ],
            ),
          ),

          const SizedBox(height: 25,),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Search here...'
              ),
            ),
          ),

          const SizedBox(height: 25),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Food menu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),

          const SizedBox(height: 10),
          
          // menu
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetails(index),
              )
            ),
          ),

          // const SizedBox(height: 25),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20)
            ),
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // image
                    Image.asset(
                      'assets/images/salmon_eggs.png',
                      height: 60,
                    ),

                    const SizedBox(width: 20),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name
                        Text(
                          'Salmon Eggs',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),

                        const SizedBox(height: 10),

                        // price
                        Text(
                          '\$21.00',
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),

                // heart
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // navigate to food item details page
  void navigateToFoodDetails(int index) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const FoodDetailsPage(food: foodMenu[index])));
  }
}
