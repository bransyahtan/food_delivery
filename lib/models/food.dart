class Food {
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
  final String name;
  final String description;
  final String imagePath;
  final int price; // <-- dari double ke int
  final FoodCategory category;
  List<AddOn> availableAddons;
}

enum FoodCategory { burgers, salads, sides, deserts, drink }

class AddOn {
  AddOn({required this.name, required this.price});
  String name;
  int price; // <-- dari double ke int
}
