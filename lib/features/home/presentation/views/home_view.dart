import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/di/dependency_injection.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/features/home/logic/cubit/home_cubit.dart';
import 'package:shop_app/features/home/presentation/widgets/banners/banners_list.dart';
import '../../../../core/utils/text_styles.dart';
import '../widgets/cart_head_icon.dart';
import '../widgets/custom_staggered_gride_view.dart';
import '../widgets/category/category_text.dart';
import '../widgets/category/list_of_category.dart';
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
                // const CustomSearchBar(),
                15.0.getVerticalSpacer(),
                BlocProvider(
                  create: (context) => HomeCubit(getIt())..fetchBannerDate(),
                  child: const BannersList(),
                ),
                3.0.getVerticalSpacer(),
                const Row(
                  children: [
                    CategoryTextWidget(),
                    Spacer(),
                    SeeAllTextWidget(),
                  ],
                ),
                2.0.getVerticalSpacer(),
                BlocProvider(
                  create: (context) => HomeCubit(getIt())..fetchCategories(),
                  child: const ListOfCategory(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: Text(
                    'Products',
                    style: CustomTextStyle.medium14
                        .copyWith(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                ),
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
