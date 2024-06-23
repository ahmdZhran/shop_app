import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/color_manager.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/text_styles.dart';
import 'custom_arror_icon.dart';

class TitlesFlachSalesWidget extends StatelessWidget {
  const TitlesFlachSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 30),
      SvgPicture.asset(
        AppAssets.tag,
        colorFilter: ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        height: 30,
        width: 30,
      ),
      const SizedBox(width: 10),
      Column(
        children: [
          const SizedBox(height: 10),
          Text(
            AppStrings.flachSales,
            style: CustomTextStyle.semiBold16.copyWith(fontSize: 15),
          ),
          const SizedBox(height: 10),
          const Text(AppStrings.timeLeft)
        ],
      ),
      const SizedBox(width: 100),
      const CustomArrowIcon(),
    ]);
  }
}