import 'package:flutter/material.dart';
import 'package:untitled/model/item_model.dart';
import 'package:untitled/screen/cart_screen.dart';

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
      itemPrice: 20.00,
      itemDescription:
          'Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal',
      itemImage: 'images/Hamburgers.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Chicken Biryani',
      itemPrice: 15.50,
      itemDescription:
          'Chicken Biryani Chicken Biryani Chicken Biryani Chicken Biryani',
      itemImage: 'images/chicken-biryani.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Grilled Fish',
      itemPrice: 20.30,
      itemDescription:
          'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
      itemImage: 'images/grilled.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'The best  beef',
      itemPrice: 20.00,
      itemDescription:
          'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
      itemImage: 'images/beef.jpg',
      counter: 0,
    ),
  ];
  List<Items> mealItem = [
    Items(
      itemName: 'Indian Meal',
      itemPrice: 20,
      itemDescription:
          'Indian Meal Indian Meal Indian Meal Indian Meal Indian Meal',
      itemImage: 'images/meal food.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Chicken Biryani',
      itemPrice: 15,
      itemDescription:
          'Chicken Biryani Chicken Biryani Chicken Biryani Chicken Biryani',
      itemImage: 'images/chicken-biryani.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Tow Burger Meal',
      itemPrice: 20,
      itemDescription:
          'Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal',
      itemImage: 'images/Hamburgers.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Fish Meal',
      itemPrice: 20,
      itemDescription: 'Fish Meal Fish Meal Fish Meal Fish Meal Fish Meal ',
      itemImage: 'images/fishmeal.jpg',
      counter: 0,
    ),
  ];
  void incrementCounter(index) {
    item[index].counter++;
    notifyListeners();
  }

  // void decrementCounter() {
  //   counter--;
  //   notifyListeners();
  // }
  //
  // changeValueAddToCartButton() {
  //   addToCart = false;
  //   notifyListeners();
  // }
  List<Items> fishItem = [
    Items(
      itemName: 'Salmon Fish',
      itemPrice: 20,
      itemDescription:
          'Salmon Fish Salmon Fish Salmon Fish Salmon Fish Salmon Fish ',
      itemImage: 'images/salmon.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Fish Meal',
      itemPrice: 20,
      itemDescription: 'Fish Meal Fish Meal Fish Meal Fish Meal Fish Meal ',
      itemImage: 'images/fishmeal.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Fish with broccoli',
      itemPrice: 20,
      itemDescription:
          'Fish with broccoli Fish with broccoli Fish with broccoli Fish with broccoli ',
      itemImage: 'images/brocolifish.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Grilled Fish',
      itemPrice: 20,
      itemDescription:
          'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
      itemImage: 'images/grilled.jpg',
      counter: 0,
    ),
  ];
  List<Items> chickenItem = [];
  List<Items> meatItems = [
    Items(
      itemName: 'The best  beef',
      itemPrice: 20,
      itemDescription:
          'Grilled Fish Grilled Fish Grilled Fish Grilled Fish Grilled Fish ',
      itemImage: 'images/beef.jpg',
      counter: 0,
    ),
  ];
  List<Items> burgerItems = [
    Items(
      itemName: 'Beef burger',
      itemPrice: 20,
      itemDescription: 'Beef burger Beef burger Beef burger Beef burger',
      itemImage: 'images/beefburger.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Best Burger',
      itemPrice: 20,
      itemDescription: 'Beef burger Beef burger Beef burger Beef burger',
      itemImage: 'images/bestburger.jpg',
      counter: 0,
    ),
    Items(
      itemName: 'Tow Burger Meal',
      itemPrice: 20,
      itemDescription:
          'Tow Burger Meal Tow Burger Meal Tow Burger Meal Tow Burger Meal',
      itemImage: 'images/Hamburgers.jpg',
      counter: 0,
    ),
  ];
  List<Items> cart = [];

  // addToCart(Items items, context) {
  //   notifyListeners();
  //
  //
  //   if (items.itemName!.isEmpty) {
  //     cart.add(Items(
  //         itemName: items.itemName,
  //         itemPrice: items.itemPrice,
  //         itemDescription: items.itemDescription,
  //         itemImage: items.itemImage,
  //     counter: items.counter
  //     ));
  //
  //   }
  //
  //
  // }
  void addToCart({required Items item}) {

      var existingItem = cart.firstWhere(
            (cartItem) => cartItem.itemName == item.itemName,
        orElse: () => Items(itemName: '', itemPrice: 0, itemDescription: '', itemImage: '', counter: 0),
      );

      if (existingItem.itemName!.isEmpty) {
        // Adding item to cart
        cart.add(Items(
          itemName: item.itemName,
          itemPrice: item.itemPrice,
          itemDescription: item.itemDescription,
          itemImage: item.itemImage,
          counter: 1, // Setting the initial counter to 1
        ));
      } else {
        existingItem.counter += 1; // Increasing the counter if the item already exists
      }
 notifyListeners();
  }
  void showCart(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Cart'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: cart.map((item) {
              return ListTile(
                title: Text('${item.itemName} x${item.counter}'),
                subtitle: Text('Price: \$${item.itemPrice! * item.counter}'),
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
