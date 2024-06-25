import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_cilrcle_avatar.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryCircleAvatar();
        },
      ),
    );
  }
}
