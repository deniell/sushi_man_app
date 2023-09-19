import 'package:flutter/material.dart';
import 'package:sushi_man_app/models/food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
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

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}