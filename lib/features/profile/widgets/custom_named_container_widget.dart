import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/text_styles.dart';

class CustomNamedContainerWidget extends StatelessWidget {
  const CustomNamedContainerWidget({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.kDarkColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 15),
        child: Text(
          data,
          style: CustomTextStyle.medium15
              .copyWith(color: ColorManager.kPrimaryColor),
        ),
      ),
    );
  }
}
