import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import '../../../../core/utils/color_manager.dart';

class IsHasAnAccount extends StatelessWidget {
  const IsHasAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAnAccount,
          style: CustomTextStyle.medium14.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorManager.kGreyColor,
              fontSize: 14.sp),
        ),
        5.0.getHorizontalSpacer(),
        Text(
          AppStrings.signUp,
          style: CustomTextStyle.medium14
              .copyWith(fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
      ],
    );
  }
}