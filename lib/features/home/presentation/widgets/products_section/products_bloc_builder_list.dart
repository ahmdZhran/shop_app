import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/di/dependency_injection.dart';

import '../../../cubits/products/products_cubit.dart';
import '../../../cubits/products/products_state.dart';
import 'products_gride.dart';
import 'shimmer_card_item.dart';

class ProductsBlocBuilderList extends StatelessWidget {
  const ProductsBlocBuilderList({super.key});

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
            orElse: () => RefreshIndicator(
              onRefresh: () async {
                context.read<ProductsCubit>().fetchHomeProducts();
              },
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Icon(
                      Icons.warning_amber_rounded,
                      size: 50,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Oops, something went wrong.\nPress on below button to refresh!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.read<ProductsCubit>().fetchHomeProducts();
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text('Refresh'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
