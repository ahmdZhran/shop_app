import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/categories/categories_cubit.dart';
import '../../../cubits/categories/categories_state.dart';
import 'categories_list.dart';
import 'shimer_for_category.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
      return state.maybeWhen(
        categoryLoading: () =>
            const Center(child: ShimmerCategoryCircleAvatar()),
        categorySuccess: (categoryResponse) => CategoriesList(
            categories: categoryResponse.categoryDataWrapper!.categories!),
        categoryError: (error) => Text(error),
        orElse: () => const SizedBox.shrink(),
      );
    });
  }
}
