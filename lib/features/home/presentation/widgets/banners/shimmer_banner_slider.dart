import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/color_manager.dart';

class CustomShimmerForBanners extends StatelessWidget {
  const CustomShimmerForBanners({
    super.key, this.childOfShimmer,
  });
  final Widget? childOfShimmer;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorManager.kDarkGreyColor,
      highlightColor: Colors.grey[700]!,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        
        ),
        height: 110.h,
        alignment: Alignment.center,
        child: childOfShimmer,
      ),
    );
  }
}
