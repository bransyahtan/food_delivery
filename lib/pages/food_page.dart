import 'package:flutter/material.dart';
import 'package:food_delivery/helper/helper.dart';
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
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.food.name),
          Text(widget.food.description),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.food.availableAddons.length,
            itemBuilder: (context, index) {
              final addonn = widget.food.availableAddons[index];

              return CheckboxListTile(
                title: Text(addonn.name),
                subtitle: Text(formatRupiah.format(addonn.price)),
                value: false,
                onChanged: (value) {},
              );
            },
          ),
        ],
      ),
    );
  }
}
