import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user,shoe successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<Cart>(
        builder: (context, cart, child) {
          final shoes = cart.getShoeList();
          return Column(
            children: [
              // Search bar
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(Icons.search, color: Colors.black),
                  ],
                ),
              ),

              // Messages
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  'everyone flies.. some fly longer than others',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              // Hot picks
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Picks🔥',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // List of shoes for sale
              Container(
                height: 300, // Set a height for the ListView
                child: ListView.builder(
                  itemCount: shoes.length < 4
                      ? shoes.length
                      : 4, // Ensure we don't go out of bounds
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // Get the shoe
                    Shoe shoe = shoes[index];
                    // Return the shoe tile
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                ),
              ),

              // Divider
              const Padding(
                padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
                child: Divider(color: Colors.white),
              ),
            ],
          );
        },
      ),
    );
  }
}
