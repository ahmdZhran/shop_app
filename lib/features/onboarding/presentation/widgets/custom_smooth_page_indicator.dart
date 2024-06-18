import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/model/onboarding_data.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBoardingData.length,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 25,
          height: 7,
          color: ColorManager.kPrimaryColor,
          rotationAngle: 180,
          borderRadius: BorderRadius.circular(24),
        ),
        dotDecoration: DotDecoration(
            width: 10,
            height: 10,
            color: ColorManager.kGreyColor,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
