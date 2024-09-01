import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/favorit_cubit.dart';
import '../../cubit/favorit_state.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../data/models/favorite_item_model.dart';

import '../../../../core/utils/color_manager.dart';

class FavoritButtonBlocBuilder extends StatelessWidget {
  final int productId;
  final String titleOfItem;
  final String imageUrl;
  final String price;
  final List<String> images;
  final String discount;
  final String oldPrice;
  final String description;

  const FavoritButtonBlocBuilder({
    super.key,
    required this.productId,
    required this.titleOfItem,
    required this.imageUrl,
    required this.price,
    required this.images,
    required this.discount,
    required this.oldPrice,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoritState>(
      builder: (context, state) {
        final isFavorite = context.read<FavoriteCubit>().isFavorite(productId);
        return IconButton(
          onPressed: () {
            final favoriteItem = FavoriteItemModel(
              id: productId,
              name: titleOfItem,
              image: imageUrl,
              price: price,
              images: images,
              discount: discount,
              oldPrice: oldPrice,
              description: description,
            );
            if (isFavorite) {
              context.read<FavoriteCubit>().removeFromFavorit(productId);
            } else {
              context.read<FavoriteCubit>().addToFavorit(favoriteItem);
            }
          },
          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
          color: ColorManager.kPrimaryColor,
        ).animate(target: isFavorite ? 1 : 0).scaleXY(end: 1.2);
      },
    );
  }
}
