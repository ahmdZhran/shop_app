import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';

import '../../../../core/utils/text_styles.dart';

class SeeAllTextWidget extends StatelessWidget {
  const SeeAllTextWidget({super.key, required this.onPressed});
 final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        AppStrings.seeAll,
        style: CustomTextStyle.regular14,
      ),
    );
  }
}
