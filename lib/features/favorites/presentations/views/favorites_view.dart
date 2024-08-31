import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/utils/app_assets.dart';
import '../../cubit/favorit_cubit.dart';
import '../../cubit/favorit_state.dart';

import '../../../home/presentation/widgets/products_section/card_item.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key, this.physics});
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favorites'),
      ),
      body: BlocBuilder<FavoriteCubit, FavoritState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            favoriteEmpty: (message) => Center(
              child: LottieBuilder.asset(AppAssets.wishListLottie),
            ),
            favoriteError: (message) => Center(
              child: Text('Error: $message'),
            ),
            favoriteAdded: (favoriteItems) => MasonryGridView.count(
              physics: physics,
              crossAxisCount: 2,
              itemCount: favoriteItems.length,
              mainAxisSpacing: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final favItem = favoriteItems[index];
                return CardItem(
                  imageurl: favItem.images.first.toString(),
                  titleOfItem: favItem.name.toString(),
                  price: favItem.price.toString(),
                  oldPrice: favItem.oldPrice.toString(),
                  discount: favItem.discount.toString(),
                  productId: favItem.id,
                  images: favItem.images,
                  description: favItem.description,
                  nameOfProduct: favItem.name,
                );
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
}
