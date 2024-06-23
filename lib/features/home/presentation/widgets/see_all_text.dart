import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_strings.dart';

import '../../../../core/utils/text_styles.dart';

class SeeAllTextWidget extends StatelessWidget {
  const SeeAllTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //TODO: create navigation to can see all products
        // customNavigation(context, AppRouter.products);
      },
      child: Text(
        AppStrings.seeAll,
        style: CustomTextStyle.regular14,
      ),
    );
  }
}
