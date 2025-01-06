import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static String id = 'cart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: const Center(
        child: Text('Your shopping cart is empty'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the checkout screen

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => CheckoutScreen(),
          //   ),
          // );
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
