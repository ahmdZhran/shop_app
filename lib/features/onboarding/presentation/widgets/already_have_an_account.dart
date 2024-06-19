import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.alreadyHaveAccount,
          style:
              CustomTextStyle.regular14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 3),
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppStrings.login,
            style:
                CustomTextStyle.medium14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
