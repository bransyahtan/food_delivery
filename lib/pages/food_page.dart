import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({required this.food, super.key});
  final Food food;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
