import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            return SizedBox(
              height: 400.h,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: productsResponse.data!.products!.length,
                mainAxisSpacing: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CardItem(
                    imageurl: productsResponse
                        .data!.products![index].images!.first
                        .toString(),
                    titleOfItem:
                        productsResponse.data!.products![index].name.toString(),
                    price: productsResponse.data!.products![index].price
                        .toString(),
                    oldPrice: productsResponse.data!.products![index].oldPrice
                        .toString(),
                    discount: productsResponse.data!.products![index].discount
                        .toString(),
                  );
                },
              ),
            );
          },
          orElse: () {
            return Text("State is not ProductsSuccess, current state: $state");
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
