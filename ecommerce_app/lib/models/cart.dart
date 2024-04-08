import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  // list of items in user cart
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Max',
      price: '200',
      description: 'Sleek design with maximum comfort',
      imagePath: 'lib/images/pngnike.png',
    ),
    Shoe(
      name: 'Adidas Ultraboost',
      price: '180',
      description: 'Innovative design with exceptional energy return',
      imagePath: 'lib/images/nike3.png',
    ),
    Shoe(
      name: 'Under Armour HOVR',
      price: '170',
      description: 'Responsive cushioning for a smooth ride',
      imagePath: 'lib/images/nike2.png',
    ),
    Shoe(
      name: 'Puma Ignite',
      price: '160',
      description: 'Energized cushioning with a stylish flair',
      imagePath: 'lib/images/nike3.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
