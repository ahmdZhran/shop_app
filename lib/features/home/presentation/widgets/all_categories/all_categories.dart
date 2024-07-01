import 'package:flutter/material.dart';

import 'category_card.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const CategoryCard();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
      ),
    ));
  }
}
