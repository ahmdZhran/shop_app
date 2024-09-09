import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/color_manager.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/text_styles.dart';
import 'custom_arror_icon.dart';

class TextsOfFlashSalesWidget extends StatelessWidget {
  const TextsOfFlashSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      25.0.getHorizontalSpacer(),
      SvgPicture.asset(
        AppAssets.tag,
        colorFilter:
            ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        height: 30,
        width: 30,
      ),
      10.0.getHorizontalSpacer(),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            AppStrings.flashSales,
            style: CustomTextStyle.semiBold16.copyWith(fontSize: 15),
          ),
          const SizedBox(height: 10),
          Text(
            AppStrings.timeLeft,
            style: CustomTextStyle.regular14.copyWith(
                fontSize: 12.sp,
                color: ColorManager.kBlackColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      const SizedBox(width: 100),
      const CustomArrowIcon(),
    ]);
  }
}
