import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Cart",
          style: TextStyle(
            color: Color.fromARGB(183, 3, 3, 3),
            fontWeight: FontWeight.w600,
            fontSize: 28
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}