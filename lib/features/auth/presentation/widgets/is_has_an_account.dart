import 'package:flutter/material.dart';
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
          AppStrigns.dontHaveAnAccount,
          style: CustomTextStyle.medium14.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorManager.kGreyColor,
              fontSize: 17),
        ),
        const SizedBox(width: 10),
        Text(
          AppStrigns.signUp,
          style: CustomTextStyle.medium14
              .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}
