import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: 'Classic Cheese Burger',
      description: 'Beef patty with melted cheese and house sauce',
      imagePath: 'lib/images/burgers/cheese_burger.png',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 0.99),
        AddOn(name: 'Bacon', price: 1.99),
        AddOn(name: 'Avocado', price: 2.49),
      ],
    ),
    Food(
      name: 'Double Beef Burger',
      description: 'Double the beef, double the flavor',
      imagePath: 'lib/images/burgers/double_beef.png',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Grilled Onions', price: 0.89),
        AddOn(name: 'Pickles', price: 0.59),
      ],
    ),
    Food(
      name: 'Spicy Chicken Burger',
      description: 'Crispy chicken with spicy mayo',
      imagePath: 'lib/images/burgers/spicy_chicken.png',
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Mayo', price: 0.49),
        AddOn(name: 'Lettuce', price: 0.39),
        AddOn(name: 'Tomato', price: 0.59),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description: 'Delicious vegetarian patty with fresh greens',
      imagePath: 'lib/images/burgers/veggie.png',
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Vegan Cheese', price: 1.29),
        AddOn(name: 'Cucumber', price: 0.39),
      ],
    ),

    // Salads
    Food(
      name: 'Caesar Salad',
      description: 'Classic Caesar with croutons and parmesan',
      imagePath: 'lib/images/salads/caesar.png',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Grilled Chicken', price: 2.99),
        AddOn(name: 'Boiled Egg', price: 1.29),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description: 'Fresh veggies with feta and olives',
      imagePath: 'lib/images/salads/greek.png',
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Extra Feta', price: 0.99),
        AddOn(name: 'Pita Bread', price: 1.49),
        AddOn(name: 'Olive Oil Dressing', price: 0.59),
      ],
    ),
    Food(
      name: 'Quinoa Bowl',
      description: 'Healthy mix of quinoa, beans, and greens',
      imagePath: 'lib/images/salads/quinoa.png',
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Tofu', price: 1.79),
        AddOn(name: 'Chickpeas', price: 0.99),
      ],
    ),
    Food(
      name: 'Fruit Salad',
      description: 'Seasonal fruits served chilled',
      imagePath: 'lib/images/salads/fruit.png',
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Honey Drizzle', price: 0.79),
        AddOn(name: 'Yogurt', price: 1.19),
        AddOn(name: 'Granola', price: 1.29),
      ],
    ),

    // Sides
    Food(
      name: 'French Fries',
      description: 'Crispy golden fries',
      imagePath: 'lib/images/sides/fries.png',
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'Cheese Sauce', price: 0.99),
        AddOn(name: 'Truffle Oil', price: 1.99),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Crunchy battered onion rings',
      imagePath: 'lib/images/sides/onion_rings.png',
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'BBQ Sauce', price: 0.79),
        AddOn(name: 'Spicy Ketchup', price: 0.49),
      ],
    ),
    Food(
      name: 'Mozzarella Sticks',
      description: 'Fried cheese sticks with marinara dip',
      imagePath: 'lib/images/sides/mozzarella.png',
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'Extra Marinara', price: 0.89),
        AddOn(name: 'Ranch Sauce', price: 0.59),
      ],
    ),
    Food(
      name: 'Chicken Nuggets',
      description: 'Juicy chicken bites served with sauce',
      imagePath: 'lib/images/sides/nuggets.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'Sweet Chili Sauce', price: 0.79),
        AddOn(name: 'Buffalo Sauce', price: 0.69),
        AddOn(name: 'Honey Mustard', price: 0.89),
      ],
    ),

    // Deserts
    Food(
      name: 'Chocolate Cake',
      description: 'Rich and moist chocolate delight',
      imagePath: 'lib/images/deserts/choco_cake.png',
      price: 4.99,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Vanilla Ice Cream', price: 1.99),
        AddOn(name: 'Chocolate Syrup', price: 0.59),
      ],
    ),
    Food(
      name: 'Ice Cream Sundae',
      description: 'Vanilla ice cream with chocolate drizzle',
      imagePath: 'lib/images/deserts/sundae.png',
      price: 3.99,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Sprinkles', price: 0.49),
        AddOn(name: 'Waffle Cone', price: 0.79),
        AddOn(name: 'Cherry on Top', price: 0.29),
      ],
    ),
    Food(
      name: 'Cheesecake',
      description: 'Smooth and creamy with graham crust',
      imagePath: 'lib/images/deserts/cheesecake.png',
      price: 5.49,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Strawberry Topping', price: 1.49),
        AddOn(name: 'Blueberry Topping', price: 1.59),
      ],
    ),
    Food(
      name: 'Brownie',
      description: 'Warm fudgy brownie square',
      imagePath: 'lib/images/deserts/brownie.png',
      price: 3.49,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Caramel Drizzle', price: 0.79),
        AddOn(name: 'Vanilla Scoop', price: 1.49),
      ],
    ),

    // Drink
    Food(
      name: 'Coca Cola',
      description: 'Chilled soda drink',
      imagePath: 'lib/images/drink/coke.png',
      price: 1.99,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Extra Ice', price: 0.29),
        AddOn(name: 'Lemon Wedge', price: 0.39),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Fresh lemon juice with sugar',
      imagePath: 'lib/images/drink/lemonade.png',
      price: 2.49,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Mint Leaves', price: 0.39),
        AddOn(name: 'Honey', price: 0.49),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description: 'Sweetened black tea over ice',
      imagePath: 'lib/images/drink/iced_tea.png',
      price: 2.49,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Lemon Slice', price: 0.49),
        AddOn(name: 'Peach Flavor', price: 0.59),
        AddOn(name: 'Sugar Syrup', price: 0.39),
      ],
    ),
    Food(
      name: 'Milkshake',
      description: 'Creamy shake with choice of flavor',
      imagePath: 'lib/images/drink/milkshake.png',
      price: 3.99,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Whipped Cream', price: 0.79),
        AddOn(name: 'Choco Chips', price: 0.59),
      ],
    ),
  ];

  List<Food> get menu => _menu;
}
