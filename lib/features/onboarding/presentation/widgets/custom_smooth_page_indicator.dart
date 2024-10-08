import 'package:flutter/material.dart';
import '../../../../core/utils/color_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator(
      {super.key,
      required this.controller,
      required this.widthOfDot,
      required this.heighOfDot,
      required this.widthOfBackGroundDot,
      required this.heightOfBackGroundDot,
      required this.countOfDots});
  final PageController controller;
  final double widthOfDot;
  final double heighOfDot;
  final double widthOfBackGroundDot;
  final double heightOfBackGroundDot;
  final int countOfDots;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: countOfDots,
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: widthOfBackGroundDot,
          height: heightOfBackGroundDot,
          color: ColorManager.kPrimaryColor,
          rotationAngle: 180,
          borderRadius: BorderRadius.circular(24),
        ),
        dotDecoration: DotDecoration(
            width: widthOfDot,
            height: heighOfDot,
            color: ColorManager.kGreyColor,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
