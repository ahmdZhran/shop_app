
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/utils/color_manager.dart';

import '../../../../core/utils/app_assets.dart';

class CustomArrowIcon extends StatelessWidget {
  const CustomArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.arrow,
      colorFilter: ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
      height: 20,
      width: 20,
    );
  }
}