import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_state.dart';
import 'card_item.dart';

class CustomStaggeredGridView extends StatelessWidget {
  const CustomStaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          productsSuccess: (productsResponse) {
            return Expanded(
              // height: 400.h,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: productsResponse.productData!.length,
                mainAxisSpacing: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CardItem(
                    imageurl:
                        productsResponse.productData![index].image.toString(),
                    titleOfItem:
                        productsResponse.productData![index].name.toString(),
                    price:
                        productsResponse.productData![index].price.toString(),
                    oldPrice: productsResponse.productData![index].oldPrice
                        .toString(),
                    discount: productsResponse.productData![index].discount
                        .toString(),
                  );
                },
              ),
            );
          },
          orElse: () {
            print("State is not ProductsSuccess, current state: $state");
            return const Text('there is something went wrong ');
          },
          // return SizedBox(
          //   height: 400.h,
          //   child: MasonryGridView.count(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 4,
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) {
          //       return const ItemCard();
          //     },
          //   ),
          // );
        );
      },
    );
  }
}
