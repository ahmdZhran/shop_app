import 'package:flutter/material.dart';
import '../helper/extensions.dart';
import '../router/routes.dart';

import '../utils/app_strings.dart';
import '../utils/text_styles.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });
  
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
          onTap: () {
            context.pushNamed(Routes.login);
          },
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
