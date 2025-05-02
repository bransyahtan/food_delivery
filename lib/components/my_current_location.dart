import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    final textController = TextEditingController();
    showDialog<void>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Your Location'),
            content: TextField(
              controller: textController,
              decoration: const InputDecoration(hintText: 'Enter Address...'),
            ),
            actions: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              MaterialButton(
                onPressed: () {
                  final newAddress = textController.text;
                  context.read<Restaurant>().updateAddress(newAddress);
                  Navigator.pop(context);
                  textController.clear();
                },
                child: const Text('Save'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder:
                      (context, restaurant, child) => Text(
                        restaurant.deliveryAddress,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
