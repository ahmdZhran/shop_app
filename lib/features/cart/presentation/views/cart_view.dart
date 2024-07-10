import 'package:flutter/material.dart';
import '../widgets/cart_app_bar_.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CartAppBar(),
        ],
      ),
    );
  }
}
