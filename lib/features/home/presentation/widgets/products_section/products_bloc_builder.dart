import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependency_injection.dart';

import '../../../cubits/products/products_cubit.dart';
import '../../../cubits/products/products_state.dart';
import 'products_gride.dart';
import 'shimmer_card_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(getIt())..fetchHomeProducts(),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return state.maybeWhen(
            productsLoading: () => const Center(child: ShimmerCardItem()),
            productsSuccess: (productResponse) =>
                ProductsGrid(products: productResponse.data!.products!),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
