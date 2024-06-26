import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_app/core/utils/color_manager.dart';

class ShimmerCategoryCircleAvatar extends StatelessWidget {
  const ShimmerCategoryCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 70.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: ColorManager.kDarkGreyColor,
              highlightColor: Colors.grey[700]!,
              child: const CircleAvatar(
                radius: 30,
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 8.w),
        ),
      ),
    );
  }
}
