import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '250',
        imagePath: 'lib/images/R.png',
        description: 'The forward-thinking design of his latest signature shoes'
        ),
    Shoe(
        name: 'Air Jordans',
        price: '230',
        imagePath: 'lib/images/R (1).png',
        description: 'The forward-thinking design of his latest signature shoes'
        ),
    Shoe(
        name: 'KD Treys',
        price: '250',
        imagePath: 'lib/images/R.png',
        description: 'The forward-thinking design of his latest signature shoes'
        ),
    Shoe(
        name: 'IDK',
        price: '250',
        imagePath: 'lib/images/R (1).png',
        description: 'The forward-thinking design of his latest signature shoes'
        ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart (Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
