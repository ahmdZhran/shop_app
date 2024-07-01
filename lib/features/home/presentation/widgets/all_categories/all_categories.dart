import 'package:flutter/material.dart';

import '../../../data/models/category_models/category_response.dart';
import 'category_card.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return  CategoryCard(
         
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
      ),
    ));
  }
}
