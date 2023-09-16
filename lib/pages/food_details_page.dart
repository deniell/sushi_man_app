import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_man_app/models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listview of food details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  // image
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  const SizedBox(width: 25),

                  // rating
                  Row(
                    children: [
                      // star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),

                      const SizedBox(height: 10),

                      // rating number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 10),

                  // food name
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  const SizedBox(height: 25),

                  // description
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Delicately sliced, fresh Atlantic salmon drapes elegantly'
                    ' over a pillow of perfectly seasoned susi rice. Its vibrant'
                    ' hue and butter texture promises an exquisite melt-in-your-mouth'
                    ' experience. Paired with a whisper of wasabi and side of '
                    'traditional pickled ginger, our salmon sushi is an ode to'
                    ' the purity and simplicity of authentic Japanese flavors.'
                    ' Indulge in the oceans bounty with each savory bite.',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    )
                  ),
                ],
              ),
            ),
          ),

          // price + quantity + add to cart button
          Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                // price + quantity
                Row(
                  children: [
                    // price
                    Text(
                      '\$${widget.food.price}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    // quantity
                    Row(
                      children: [
                        // minus button
                        Container(
                          child: IconButton(
                            icon: Icons.remove,
                            onPressed: decrementQuantity,
                          ),
                        )

                        // quantity count

                        // plus button
                      ],
                    )
                  ],
                )

                // add to cart button
              ],
            ),
          )
        ],
      ),
    );
  }
}
