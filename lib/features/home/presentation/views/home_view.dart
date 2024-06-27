import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../logic/cubit/home_cubit.dart';
import '../widgets/banners/banners_list.dart';
import '../widgets/cart_head_icon.dart';
import '../widgets/category/category_text.dart';
import '../widgets/category/list_of_category.dart';
import '../widgets/custom_staggered_gride_view.dart';
import '../widgets/see_all_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CartHeadIcon(),
                // 10.0.getVerticalSpacer(),
                //TODO move search bar into separted screen
                // const CustomSearchBar(),
                15.0.getVerticalSpacer(),
                BlocProvider(
                  create: (context) => HomeCubit(getIt())..fetchBannerDate(),
                  child: const BannersList(),
                ),
                3.0.getVerticalSpacer(),
                const TitleOfSections(titleOfSection: AppStrings.category),
                2.0.getVerticalSpacer(),
                BlocProvider(
                  create: (context) => HomeCubit(getIt())..fetchCategories(),
                  child: const ListOfCategory(),
                ),
                const TitleOfSections(titleOfSection: AppStrings.products),
                10.0.getVerticalSpacer(),
                const CustomStaggeredGridView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleOfSections extends StatelessWidget {
  const TitleOfSections({
    super.key,
    required this.titleOfSection,
  });
  final String titleOfSection;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryTextWidget(titleTextWidget: titleOfSection),
        const Spacer(),
        const SeeAllTextWidget(),
      ],
    );
  }
}
