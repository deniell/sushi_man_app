import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  const factory Food({
    required String name,
    required String price,
    required String imagePath,
    required String rating,
  }) = _Food;

  factory Food.fromJson(Map<String, Object?> json)
   => _$FoodFromJson(json);
}