import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagepath:'lib/images/paul-gaudriault-a-QH9MAAVNI-unsplash.jpg',
        description: 'A cool shoe',
    ),

    Shoe(
      name: 'Nike Shoes',
      price: '350',
      imagepath:'lib/images/jayson-hinrichsen-qLs4WYXqLNY-unsplash.jpg',
      description: 'A cool shoe',
    ),

    Shoe(
      name: 'puma Shoes',
      price: '300',
      imagepath:'lib/images/imani-bahati-LxVxPA1LOVM-unsplash.jpg',
      description: 'A cool shoe',
    ),

    Shoe(
      name: 'palms Shoes',
      price: '300',
      imagepath:'lib/images/domino-studio-164_6wVEHfI-unsplash.jpg',
      description: 'A cool shoe',
    ),
  ];

  //list of items in user cart
List<Shoe> userCart = [];

  //get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
void addItemToCart(Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}