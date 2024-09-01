import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../data/models/home_products_model/home_products_response.dart';
import 'card_item.dart';

class ProductsGrid extends StatelessWidget {
  final List<ProductDetails> products;
  const ProductsGrid({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      itemCount: products.length,
      mainAxisSpacing: 4,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return CardItem(
          imageUrl: products[index].images!.first.toString(),
          titleOfItem: products[index].name.toString(),
          price: products[index].price.toString(),
          oldPrice: products[index].oldPrice.toString(),
          discount: products[index].discount.toString(),
          productId: products[index].id!,
          images: products[index].images!,
          description: products[index].description!,
          nameOfProduct: products[index].name!,
        );
      },
    );
  }
}
