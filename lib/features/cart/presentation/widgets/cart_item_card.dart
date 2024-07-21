import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/cart/cubits/cubit/cart_cubit.dart';
import '../../../../core/utils/color_manager.dart';

class CartItemCard extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final double itemPrice;
  final int itemCount;
  final int itemId;

  const CartItemCard({
    super.key,
    required this.imageUrl,
    required this.itemName,
    required this.itemPrice,
    required this.itemCount,
    required this.itemId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.kDarkColor,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '\$ ${itemPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  context.read<CartCubit>().incrementItemCount(itemId);
                },
                icon: const Icon(Icons.add_circle_outline),
                color: ColorManager.kDarkColor,
              ),
              Text(
                itemCount.toString(),
                style: TextStyle(
                  fontSize: 18.0,
                  color: ColorManager.kDarkColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<CartCubit>().decrementItemCount(itemId);
                },
                icon: const Icon(Icons.remove_circle_outline),
                color: ColorManager.kDarkColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
