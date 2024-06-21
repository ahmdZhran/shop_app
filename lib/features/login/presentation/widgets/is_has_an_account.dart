import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/color_manager.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

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
              fontSize: 12.sp),
        ),
        5.0.getHorizontalSpacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.signup);
          },
          child: Text(
            AppStrings.signUp,
            style: CustomTextStyle.medium14
                .copyWith(fontWeight: FontWeight.bold, fontSize: 12.sp),
          ),
        ),
      ],
    );
  }
}
