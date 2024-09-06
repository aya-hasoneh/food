import 'package:flutter/material.dart';

class ItemsDetailsProvider extends ChangeNotifier {
  bool addToCart = true;
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }

  changeValueAddToCartButton() {
    addToCart = false;
    notifyListeners();
  }
}
