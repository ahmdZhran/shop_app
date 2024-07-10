import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/color_manager.dart';

import '../utils/app_assets.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.2),
        child: SvgPicture.asset(
          AppAssets.arroBack,
          colorFilter:
              ColorFilter.mode(ColorManager.kPrimaryColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
