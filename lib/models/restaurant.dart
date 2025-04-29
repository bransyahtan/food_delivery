import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: 'Classic Cheese Burger',
      description: 'Beef patty with melted cheese and house sauce',
      imagePath: 'lib/images/burgers/cheese_burger.png',
      price: 45000,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Cheese', price: 5000),
        AddOn(name: 'Bacon', price: 10000),
        AddOn(name: 'Avocado', price: 12000),
      ],
    ),
    Food(
      name: 'Double Beef Burger',
      description: 'Double the beef, double the flavor',
      imagePath: 'lib/images/burgers/double_beef.png',
      price: 60000,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Grilled Onions', price: 4000),
        AddOn(name: 'Pickles', price: 3000),
      ],
    ),
    Food(
      name: 'Spicy Chicken Burger',
      description: 'Crispy chicken with spicy mayo',
      imagePath: 'lib/images/burgers/spicy_chicken.png',
      price: 50000,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Extra Mayo', price: 3000),
        AddOn(name: 'Lettuce', price: 2000),
        AddOn(name: 'Tomato', price: 3000),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description: 'Delicious vegetarian patty with fresh greens',
      imagePath: 'lib/images/burgers/veggie.png',
      price: 45000,
      category: FoodCategory.burgers,
      availableAddons: [
        AddOn(name: 'Vegan Cheese', price: 8000),
        AddOn(name: 'Cucumber', price: 2000),
      ],
    ),

    // Salads
    Food(
      name: 'Caesar Salad',
      description: 'Classic Caesar with croutons and parmesan',
      imagePath: 'lib/images/salads/caesar.png',
      price: 40000,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Grilled Chicken', price: 18000),
        AddOn(name: 'Boiled Egg', price: 8000),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description: 'Fresh veggies with feta and olives',
      imagePath: 'lib/images/salads/greek.png',
      price: 42000,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Extra Feta', price: 6000),
        AddOn(name: 'Pita Bread', price: 9000),
        AddOn(name: 'Olive Oil Dressing', price: 4000),
      ],
    ),
    Food(
      name: 'Quinoa Bowl',
      description: 'Healthy mix of quinoa, beans, and greens',
      imagePath: 'lib/images/salads/quinoa.png',
      price: 50000,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Tofu', price: 10000),
        AddOn(name: 'Chickpeas', price: 6000),
      ],
    ),
    Food(
      name: 'Fruit Salad',
      description: 'Seasonal fruits served chilled',
      imagePath: 'lib/images/salads/fruit.png',
      price: 35000,
      category: FoodCategory.salads,
      availableAddons: [
        AddOn(name: 'Honey Drizzle', price: 5000),
        AddOn(name: 'Yogurt', price: 8000),
        AddOn(name: 'Granola', price: 8000),
      ],
    ),

    // Sides
    Food(
      name: 'French Fries',
      description: 'Crispy golden fries',
      imagePath: 'lib/images/sides/fries.png',
      price: 20000,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'Cheese Sauce', price: 6000),
        AddOn(name: 'Truffle Oil', price: 12000),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Crunchy battered onion rings',
      imagePath: 'lib/images/sides/onion_rings.png',
      price: 25000,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'BBQ Sauce', price: 5000),
        AddOn(name: 'Spicy Ketchup', price: 3000),
      ],
    ),
    Food(
      name: 'Mozzarella Sticks',
      description: 'Fried cheese sticks with marinara dip',
      imagePath: 'lib/images/sides/mozzarella.png',
      price: 30000,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'Extra Marinara', price: 5000),
        AddOn(name: 'Ranch Sauce', price: 4000),
      ],
    ),
    Food(
      name: 'Chicken Nuggets',
      description: 'Juicy chicken bites served with sauce',
      imagePath: 'lib/images/sides/nuggets.png',
      price: 28000,
      category: FoodCategory.sides,
      availableAddons: [
        AddOn(name: 'Sweet Chili Sauce', price: 5000),
        AddOn(name: 'Buffalo Sauce', price: 4000),
        AddOn(name: 'Honey Mustard', price: 5000),
      ],
    ),

    // Deserts
    Food(
      name: 'Chocolate Cake',
      description: 'Rich and moist chocolate delight',
      imagePath: 'lib/images/deserts/choco_cake.png',
      price: 30000,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Vanilla Ice Cream', price: 12000),
        AddOn(name: 'Chocolate Syrup', price: 4000),
      ],
    ),
    Food(
      name: 'Ice Cream Sundae',
      description: 'Vanilla ice cream with chocolate drizzle',
      imagePath: 'lib/images/deserts/sundae.png',
      price: 25000,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Sprinkles', price: 3000),
        AddOn(name: 'Waffle Cone', price: 5000),
        AddOn(name: 'Cherry on Top', price: 2000),
      ],
    ),
    Food(
      name: 'Cheesecake',
      description: 'Smooth and creamy with graham crust',
      imagePath: 'lib/images/deserts/cheesecake.png',
      price: 33000,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Strawberry Topping', price: 9000),
        AddOn(name: 'Blueberry Topping', price: 10000),
      ],
    ),
    Food(
      name: 'Brownie',
      description: 'Warm fudgy brownie square',
      imagePath: 'lib/images/deserts/brownie.png',
      price: 20000,
      category: FoodCategory.deserts,
      availableAddons: [
        AddOn(name: 'Caramel Drizzle', price: 5000),
        AddOn(name: 'Vanilla Scoop', price: 9000),
      ],
    ),

    // Drink
    Food(
      name: 'Coca Cola',
      description: 'Chilled soda drink',
      imagePath: 'lib/images/drink/coke.png',
      price: 12000,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Extra Ice', price: 2000),
        AddOn(name: 'Lemon Wedge', price: 3000),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'Fresh lemon juice with sugar',
      imagePath: 'lib/images/drink/lemonade.png',
      price: 15000,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Mint Leaves', price: 3000),
        AddOn(name: 'Honey', price: 3000),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description: 'Sweetened black tea over ice',
      imagePath: 'lib/images/drink/iced_tea.png',
      price: 15000,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Lemon Slice', price: 3000),
        AddOn(name: 'Peach Flavor', price: 4000),
        AddOn(name: 'Sugar Syrup', price: 3000),
      ],
    ),
    Food(
      name: 'Milkshake',
      description: 'Creamy shake with choice of flavor',
      imagePath: 'lib/images/drink/milkshake.png',
      price: 25000,
      category: FoodCategory.drink,
      availableAddons: [
        AddOn(name: 'Whipped Cream', price: 5000),
        AddOn(name: 'Choco Chips', price: 4000),
      ],
    ),
  ];

  List<Food> get menu => _menu;
}
