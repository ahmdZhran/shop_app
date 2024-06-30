import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import 'card_item.dart';
import 'shimmer_card_item.dart';

class CustomStaggeredGridView extends StatelessWidget {
  const CustomStaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () => const Center(
            child: ShimmerCardItem(),
          ),
          productsSuccess: (homeproductsResponse) {
            return MasonryGridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              itemCount: homeproductsResponse.data!.products!.length,
              mainAxisSpacing: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return CardItem(
                  imageurl: homeproductsResponse
                      .data!.products![index].images!.first
                      .toString(),
                  titleOfItem: homeproductsResponse.data!.products![index].name
                      .toString(),
                  price: homeproductsResponse.data!.products![index].price
                      .toString(),
                  oldPrice: homeproductsResponse.data!.products![index].oldPrice
                      .toString(),
                  discount: homeproductsResponse.data!.products![index].discount
                      .toString(),
                );
              },
            );
          },
          orElse: () {
            return Text("State is not ProductsSuccess, current state: $state");
          },
        );
      },
    );
  }
}
