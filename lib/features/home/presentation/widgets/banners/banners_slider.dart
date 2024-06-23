import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color_manager.dart';

class BannersSlider extends StatelessWidget {
  const BannersSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Container(
          width: double.infinity,
          height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorManager.kPrimaryColor,
          ),
          child: Image.asset(
            'assets/images/backaground.webp',
            fit: BoxFit.fill,
          )),
    );
  }
}
