import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';

import 'email_and_password_fields.dart';

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
            AppStrings.welcomeBack,
            style: CustomTextStyle.soraBoldstyleBold.copyWith(fontSize: 30),
          ),
          5.0.getVerticalSpacer(),
          Text(
            AppStrings.enterYourDetailsBelow,
            style: CustomTextStyle.regular14
                .copyWith(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          10.0.getVerticalSpacer(),
          const EmailAndPasswordFields()
        ],
      ),
    );
  }
}
