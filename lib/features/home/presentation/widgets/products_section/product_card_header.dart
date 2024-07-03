import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';

class ProductCardHeader extends StatelessWidget {
  const ProductCardHeader({
    super.key,
    required this.discount,
    required this.isFavorite,
  });

  final String discount;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (discount != '0')
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 2.0,
            ),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              '$discount%',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        const Spacer(),
        Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: ColorManager.kPrimaryColor,
        ),
      ],
    );
  }
}
