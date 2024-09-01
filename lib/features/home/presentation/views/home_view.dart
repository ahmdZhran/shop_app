import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/features/home/cubits/banner/banner_cubit.dart';
import 'package:shop_app/features/home/cubits/categories/categories_cubit.dart';
import 'package:shop_app/features/home/cubits/products/products_cubit.dart';
import '../../../../core/helper/extensions.dart';
import '../widgets/banners_section/banner_bloc_builder.dart';
import '../widgets/cart_head_icon.dart';
import '../widgets/categories_section/categories_bloc_builder.dart';
import '../widgets/products_section/products_bloc_builder.dart';
import '../widgets/title_of_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    context.read<BannerCubit>().fetchBannerDate();
    context.read<CategoriesCubit>().fetchCategories();
    context.read<ProductsCubit>().fetchHomeProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: RefreshIndicator(
            color: ColorManager.kPrimaryColor,
            onRefresh: _fetchData,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const CartHeadIcon(),
                15.0.getVerticalSpacer(),
                const BannerSection(),
                20.0.getVerticalSpacer(),
                const CategoriesSection(),
                20.0.getVerticalSpacer(),
                ProductsSection(seeAllProducts: () {}),
                const ProductsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
