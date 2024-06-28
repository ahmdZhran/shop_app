import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/features/home/logic/cubit/home_cubit.dart';
import 'package:shop_app/features/home/logic/cubit/home_state.dart';

import 'category_cilrcle_avatar.dart';
import 'shimer_for_category.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          categoryLoading: () => const Center(
            child: ShimmerCategoryCircleAvatar(),
          ),
          categorySuccess: (categoryResponse) {
            return SizedBox(
              height: 60.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount:
                    categoryResponse.categoryDataWrapper!.categories!.length,
                itemBuilder: (context, index) {
                  return CategoryCircleAvatar(
                    imageUrl: categoryResponse
                        .categoryDataWrapper!.categories![index].image
                        .toString(),
                  );
                },
              ),
            );
          },
          bannerError: (error) => Text(error),
          orElse: () => const Text('something went wrong '),
        );
      },
    );
  }
}
