import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/favorits/data/models/favorite_item_model.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../favorits/cubit/favorit_cubit.dart';
import '../../../../favorits/cubit/favorit_state.dart';

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
  final bool isFavorite = false;
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
        BlocBuilder<FavoritCubit, FavoritState>(
          builder: (context, state) {
            final isFavorite =
                context.read<FavoritCubit>().isFavorite(productId);
            return IconButton(
              onPressed: () {
                final favoriteItem = FavoriteItemModel(
                  id: productId,
                  name: titleOfItem,
                  image: imageurl,
                  price: price,
                  images: images,
                  discount: discount,
                  oldPrice: oldPrice,
                  description: description,
                );
                if (isFavorite) {
                  context.read<FavoritCubit>().removeFromFavorit(productId);
                } else {
                  context.read<FavoritCubit>().addToFavorit(favoriteItem);
                }
              },
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              color: ColorManager.kPrimaryColor,
            );
          },
        ).animate(target: isFavorite ? 1 : 0).scaleXY(end: 3.2),
      ],
    );
  }
}
