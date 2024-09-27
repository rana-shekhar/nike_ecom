import 'package:flutter/cupertino.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'MAXFLY',
        price: '3000',
        imagePath: 'assets/images/MAXFLY.png',
        description: 'The forward thing design'),
    Shoe(
        name: 'AIR',
        price: '2000',
        imagePath: 'assets/images/AIR.png',
        description: 'The forward thing design'),
    Shoe(
        name: 'ZOOM',
        price: '4000',
        imagePath: 'assets/images/ZOOM.png',
        description: 'The forward thing design'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  // Method to calculate total price of items in the cart
  double getTotalPrice() {
    double total = 0.0;
    for (Shoe shoe in userCart) {
      total += double.tryParse(shoe.price) ??
          0.0; // Convert price from string to double
    }
    return total;
  }
}
