import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';

class HeadOfSignUpTexts extends StatelessWidget {
  const HeadOfSignUpTexts({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: CustomTextStyle.soraBoldstyleBold,
        ),
        Text(
          AppStrings.enterYourDetailsBelow,
          style: CustomTextStyle.regular14,
        )
      ],
    );
  }
}
