import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/features/favorits/cubit/favorit_cubit.dart';
import 'package:shop_app/features/favorits/cubit/favorit_state.dart';
import '../../../home/presentation/widgets/products_section/card_item.dart';
import '../../data/models/favorite_item_model.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: BlocBuilder<FavoritCubit, FavoritState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            favoriteEmpty: (message) => const Center(
              child: Text('No favorites yet!'),
            ),
            favoriteError: (message) => Center(
              child: Text('Error: $message'),
            ),
            favoriteAdded: (favoriteItems) => MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: favoriteItems.length,
              mainAxisSpacing: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = favoriteItems[index];
                return _buildFavoriteItem(context, item);
              },
            ),
            orElse: () => const Center(
              child: Text('Unexpected state!'),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFavoriteItem(BuildContext context, FavoriteItemModel item) {
    return CardItem(
      imageurl: item.image,
      titleOfItem: item.name,
      price: item.price.toString(),
      oldPrice: item.price.toString(),
      discount: item.price.toString(),
      productId: item.id,
      images: item.images,
      description: item.description,
      nameOfProduct: item.name,
    );
  }
}
