import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/utils/app_strings.dart';
import 'package:shop_app/core/utils/text_styles.dart';

import 'see_all_text.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.products,
          style: CustomTextStyle.soraBoldstyleBold.copyWith(fontSize: 17.sp),
        ),
        const Spacer(),
        SeeAllTextWidget(
          onPressed: onPressed,
        ),
      ],
    );
  }
}
