import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/text_styles.dart';

import 'custom_form_login.dart';

class TextFormFieldBody extends StatelessWidget {
  const TextFormFieldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          20.0.getVerticalSpacer(),
          Text(
            AppStrigns.wecomeBack,
            style: CustomTextStyle.soraBoldstyleBold.copyWith(fontSize: 30),
          ),
          10.0.getVerticalSpacer(),
          Text(
            AppStrigns.enterYourDetailsBelow,
            style: CustomTextStyle.regular14
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          10.0.getVerticalSpacer(),
          const EmailAndPasswordFeilds()
        ],
      ),
    );
  }
}
