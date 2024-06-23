import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../widgets/cart_head_icon.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/custom_staggered_gride_view.dart';
import '../widgets/electronic_details.dart';
import '../widgets/flash_sales_container.dart';
import '../widgets/list_of_category.dart';
import '../widgets/see_all_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CartHeadIcon(),
                10.0.getVerticalSpacer(),
                const CustomSearchBar(),
                15.0.getVerticalSpacer(),
                const FlashSalesContainer(),
                3.0.getVerticalSpacer(),
                const Row(
                  children: [
                    CategoryTextWidget(),
                    Spacer(),
                    SeeAllTextWidget(),
                  ],
                ),
                2.0.getVerticalSpacer(),
                const ListOfCategory(),
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
