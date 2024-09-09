import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/utils/app_assets.dart';

import '../../logic/cubit/search_cubit.dart';
import '../../logic/cubit/search_state.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return state.maybeWhen(
              searchLoading: () => Center(
                    child: LottieBuilder.asset(AppAssets.lottieSearchOnResult),
                  ),
              searchSuccess: (products) => ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ListTile(
                        leading: Container(
                            height: 100.h,
                            width: 75.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Image.network(
                              product.image ?? '',
                            )),
                        title: Text(
                          product.name ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    },
                  ),
              searchError: (error) => Center(
                    child: LottieBuilder.asset(AppAssets.lottieNotFound),
                  ),
              orElse: () => const SizedBox.shrink());
        },
      ),
    );
  }
}
