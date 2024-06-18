
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
          AppStrigns.alreadyHaveAccount,
          style: CustomTextStyle.regular14,
        ),
        const SizedBox(width: 3),
        GestureDetector(
          onTap: onTap,
          child: Text(
            AppStrigns.login,
            style: CustomTextStyle.medium14,
          ),
        ),
      ],
    );
  }
}