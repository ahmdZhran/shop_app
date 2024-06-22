import 'package:e_commerce/features/home/presentation/widgets/custom_search.dart';
import 'package:e_commerce/features/home/presentation/widgets/electronic_text.dart';
import 'package:e_commerce/features/home/presentation/widgets/flash_sales_container.dart';
import 'package:e_commerce/features/home/presentation/widgets/icon_head.dart';
import 'package:e_commerce/features/home/presentation/widgets/list_of_product_item.dart';
import 'package:e_commerce/features/home/presentation/widgets/see_all_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
                Row(
                  children: [
                    const ElectronicDealsText(),
                    Spacer(),
                    const SeeAllTextWidget(),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.02),
                // ListOfProductItem(screenSize: screenSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
