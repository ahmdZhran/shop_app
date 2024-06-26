import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/utils/app_strings.dart';

import '../../../../../core/utils/text_styles.dart';

class CategoryTextWidget extends StatelessWidget {
  const CategoryTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Text(
        AppStrings.category,
        style: CustomTextStyle.medium14
            .copyWith(fontSize: 17.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
