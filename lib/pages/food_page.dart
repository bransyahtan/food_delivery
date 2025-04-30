import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/helper/helper.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  FoodPage({required this.food, super.key}) {
    for (final addOn in food.availableAddons) {
      selectedAddons[addOn] = false;
    }
  }

  final Food food;
  final Map<AddOn, bool> selectedAddons = {};
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // void addToCart(Food food, Map<AddOn, bool> selectedAddons) {
  //   final currentlySelectedAddons = <AddOn>[];
  //   for (final addon in widget.food.availableAddons) {
  //     if (widget.selectedAddons[addon] == true) {
  //       currentlySelectedAddons.add(addon);
  //     }
  //   }
  // }

  void addToCart(Food food, Map<AddOn, bool> selectedAddons) {
    Navigator.pop(context);
    final currentlySelectedAddons = <AddOn>[];
    for (final addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] ?? false) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.food.imagePath),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        formatRupiah.format(widget.food.price),
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(widget.food.description),
                      const SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(height: 10),
                      Text(
                        'Add-ons',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            final addonn = widget.food.availableAddons[index];

                            return CheckboxListTile(
                              title: Text(addonn.name),
                              subtitle: Text(
                                formatRupiah.format(addonn.price),
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              value: widget.selectedAddons[addonn],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addonn] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                  text: 'Add To Cart',
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
