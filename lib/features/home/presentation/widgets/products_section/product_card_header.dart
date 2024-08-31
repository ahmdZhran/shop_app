import 'package:flutter/material.dart';
import '../../../../favorites/presentations/widgets/favorite_button_bloc_builder.dart';

class ProductCardHeader extends StatelessWidget {
  const ProductCardHeader({
    super.key,
    required this.discount,
    required this.productId,
    required this.titleOfItem,
    required this.imageurl,
    required this.price,
    required this.description,
    required this.images,
    required this.oldPrice,
  });

  final String discount;
  final String description;
  final String oldPrice;
  final int productId;
  final String titleOfItem;
  final String imageurl;
  final String price;
  final List<String> images;

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
        FavoritButtonBlocBuilder(
          productId: productId,
          titleOfItem: titleOfItem,
          imageurl: imageurl,
          price: price,
          images: images,
          discount: discount,
          oldPrice: oldPrice,
          description: description,
        ),
      ],
    );
  }
}
