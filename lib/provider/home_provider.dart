import 'package:flutter/material.dart';
import 'package:untitled/model/item_model.dart';

class HomeProvider extends ChangeNotifier {
  final PageController controller = PageController(
    viewportFraction: 0.8,
    initialPage: 1,
  );
  int selectedIndex = 0;
  void onItemTapped(int index) {
    selectedIndex = index;
    print("select $selectedIndex");
    notifyListeners();
  }

  List<Items> item = [
    Items(
        itemName: 'Tow Burger Meal',
        itemPrice: 20,
        itemDescription:
        'Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal',
        itemImage: 'images/Hamburgers.jpg'),
    Items(
        itemName: 'Chicken Biryani',
        itemPrice: 15,
        itemDescription:
        'Chicken Biryani Chicken Biryani Chicken Biryani Chicken Biryani',
        itemImage: 'images/chicken-biryani.jpg'),
    Items(
        itemName: 'Grilled Fish',
        itemPrice: 20,
        itemDescription:
        'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
        itemImage: 'images/grilled.jpg'),
    Items(
        itemName: 'The best  beef',
        itemPrice: 20,
        itemDescription:
        'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
        itemImage: 'images/beef.jpg'),
  ];
  List<Items> mealItem = [
    Items(
        itemName: 'Indian Meal',
        itemPrice: 20,
        itemDescription:
            'Indian Meal Indian Meal Indian Meal Indian Meal Indian Meal',
        itemImage: 'images/meal food.jpg'),
    Items(
        itemName: 'Chicken Biryani',
        itemPrice: 15,
        itemDescription:
            'Chicken Biryani Chicken Biryani Chicken Biryani Chicken Biryani',
        itemImage: 'images/chicken-biryani.jpg'),
    Items(
        itemName: 'Tow Burger Meal',
        itemPrice: 20,
        itemDescription:
            'Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal',
        itemImage: 'images/Hamburgers.jpg'),
    Items(
        itemName: 'Fish Meal',
        itemPrice: 20,
        itemDescription: 'Fish Meal Fish Meal Fish Meal Fish Meal Fish Meal ',
        itemImage: 'images/fishmeal.jpg'),
  ];
  List<Items> fishItem = [
    Items(
        itemName: 'Salmon Fish',
        itemPrice: 20,
        itemDescription:
            'Salmon Fish Salmon Fish Salmon Fish Salmon Fish Salmon Fish ',
        itemImage: 'images/salmon.jpg'),
    Items(
        itemName: 'Fish Meal',
        itemPrice: 20,
        itemDescription: 'Fish Meal Fish Meal Fish Meal Fish Meal Fish Meal ',
        itemImage: 'images/fishmeal.jpg'),
    Items(
        itemName: 'Fish with broccoli',
        itemPrice: 20,
        itemDescription:
            'Fish with broccoli Fish with broccoli Fish with broccoli Fish with broccoli ',
        itemImage: 'images/brocolifish.jpg'),
    Items(
        itemName: 'Grilled Fish',
        itemPrice: 20,
        itemDescription:
            'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
        itemImage: 'images/grilled.jpg'),
  ];
  List<Items> chickenItem = [];
  List<Items> meatItems = [
    Items(
        itemName: 'The best  beef',
        itemPrice: 20,
        itemDescription:
        'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
        itemImage: 'images/beef.jpg'),

  ];
  List<Items> burgerItems = [
    Items(
      itemName: 'Beef burger',
      itemPrice: 20,
      itemDescription:
      'Beef burger Beef burger Beef burger Beef burger',
      itemImage: 'images/beefburger.jpg'),
    Items(
        itemName: 'Best Burger',
        itemPrice: 20,
        itemDescription:
        'Beef burger Beef burger Beef burger Beef burger',
        itemImage: 'images/bestburger.jpg'),
    Items(
        itemName: 'Tow Burger Meal',
        itemPrice: 20,
        itemDescription:
        'Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal',
        itemImage: 'images/Hamburgers.jpg'),
  ];

}
