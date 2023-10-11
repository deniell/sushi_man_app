import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_man_app/components/button.dart';
import 'package:sushi_man_app/models/food.dart';
import 'package:sushi_man_app/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
        ),
        body: Column(
          children: [
            // CUSTOMER CART
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // get the food from the cart
                  final Food food = value.cart[index];

                  // get the food name
                  final String foodName = food.name;

                  // get the food price
                  final String foodPrice = food.price;

                  // return list tile
                  return Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).buttonColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                        onPressed: () => removeFromCart(context, food),
                      ),
                    ),
                  );
                },
              ),
            ),

            // PAY BUTTON
            const Padding(
              padding: EdgeInsets.all(25),
              child: Button(text: "Pay Now", onTap: null),
            ),
          ],
        ),
      ),
    );
  }

  // Remove from Cart
  void removeFromCart(BuildContext context, Food food) {
    // get access to shop
    final Shop shop = context.read<Shop>();

    // remove from cart
    shop.removeFromCart(food);
  }
}
