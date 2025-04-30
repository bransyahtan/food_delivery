import 'package:food_delivery/models/food.dart';

class CartItem {
  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });
  Food food;
  List<AddOn> selectedAddons;
  int quantity;

  int get totalPrice {
    final addonsPrice = selectedAddons.fold(
      0,
      (sum, addon) => sum + addon.price,
    );
    return (food.price + addonsPrice) * quantity;
  }
}
