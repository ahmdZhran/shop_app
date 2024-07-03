import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/category_models/category_response.dart';
import 'category_cilrcle_avatar.dart';

class CategoriesList extends StatelessWidget {
  final List<CategoryData> categories;
  const CategoriesList({required this.categories, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCircleAvatar(
              imageUrl: categories[index].image.toString());
        },
      ),
    );
  }
}
