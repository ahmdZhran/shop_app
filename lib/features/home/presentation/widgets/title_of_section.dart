import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';

import 'see_all_text.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({
    super.key,
    required this.seeAllProducts,
  });
  final void Function() seeAllProducts;
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
          onPressed: seeAllProducts,
        ),
      ],
    );
  }
}
