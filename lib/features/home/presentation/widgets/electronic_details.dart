
import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/app_strings.dart';

import '../../../../core/utils/text_styles.dart';

class ElectronicDealsText extends StatelessWidget {
  const ElectronicDealsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        AppStrings.electronicDeals,
        style: CustomTextStyle.medium14
            .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }
}