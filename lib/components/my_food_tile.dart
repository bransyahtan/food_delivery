import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class MyFoodTile extends StatelessWidget {
  const MyFoodTile({required this.food, required this.onTap, super.key});
  final Food food;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final formattedPrice = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(food.price);

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        formattedPrice,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(width: 15),
                const Icon(Icons.fastfood, size: 48, color: Colors.orange),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(8),
                //   child: Image.asset(food.imagePath, height: 120),
                // ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 19,
          indent: 19,
        ),
      ],
    );
  }
}
