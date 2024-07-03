import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../widgets/banners_section/banner_bloc_builder.dart';
import '../widgets/cart_head_icon.dart';
import '../widgets/categories_section/categories_bloc_builder.dart';
import '../widgets/products_section/products_bloc_builder.dart';
import '../widgets/title_of_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
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
    );
  }
}
