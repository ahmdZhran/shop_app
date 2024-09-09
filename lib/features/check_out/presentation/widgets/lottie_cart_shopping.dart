import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/app_assets.dart';

class LottieCartShopping extends StatelessWidget {
  const LottieCartShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppAssets.checkoutCartShopping,
        height: 200.h,
        width: 200.w,
      ),
    );
  }
}
