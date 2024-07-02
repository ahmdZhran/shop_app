import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import '../products/card_item.dart';
import '../products/shimmer_card_item.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
  
    final homeCubit = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              homeCubit.fetchHomeProducts();
            },
            child: state.maybeWhen(
              productsLoading: () => const Center(
                child: ShimmerCardItem(),
              ),
              productsSuccess: (homeproductsResponse) {
                return MasonryGridView.count(
                  physics: const AlwaysScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  itemCount: homeproductsResponse.data!.products!.length,
                  mainAxisSpacing: 4,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CardItem(
                      imageurl: homeproductsResponse
                          .data!.products![index].images!.first
                          .toString(),
                      titleOfItem: homeproductsResponse
                          .data!.products![index].name
                          .toString(),
                      price: homeproductsResponse.data!.products![index].price
                          .toString(),
                      oldPrice: homeproductsResponse
                          .data!.products![index].oldPrice
                          .toString(),
                      discount: homeproductsResponse
                          .data!.products![index].discount
                          .toString(),
                    );
                  },
                );
              },
              orElse: () {
                return Center(child: Text('$state'));
              },
            ),
          );
        },
      ),
    );
  }
}
