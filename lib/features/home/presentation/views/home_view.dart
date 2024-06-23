import 'package:flutter/material.dart';
import '../widgets/cart_head_icon.dart';
import '../widgets/custom_category_circle.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/electronic_details.dart';
import '../widgets/flash_sales_container.dart';
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
                const SizedBox(height: 16),
                const CustomSearchBar(),
                SizedBox(height: screenSize.height * 0.05),
                const FlashSalesContainer(),
                SizedBox(height: screenSize.height * 0.03),
                const Row(
                  children: [
                    CategoryTextWidget(),
                    Spacer(),
                    SeeAllTextWidget(),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.02),
                const ListOfCategory()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomCategoryCircle();
          }),
    );
  }
}
