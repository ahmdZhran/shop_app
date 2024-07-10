import 'package:flutter/material.dart';
import '../widgets/cart_app_bar_.dart';
import '../widgets/cart_item_card.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CartAppBar(),
          Expanded(
            child: ListView(children: const [
              CartItemCard(
                imageUrl:
                    'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
                itemName: 'Apple Watch',
                itemPrice: 600.00,
                itemCount: 3,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
