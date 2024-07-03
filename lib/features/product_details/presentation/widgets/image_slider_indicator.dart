import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';

import '../../../onboarding/presentation/widgets/custom_smooth_page_indicator.dart';

class ImageSliderIndicator extends StatelessWidget {
  const ImageSliderIndicator({
    super.key,
    required this.images,
    required this.controller,
  });

  final List<String> images;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          10.0.getVerticalSpacer(),
          CustomSmoothPageIndicator(
            countOfDots: images.length,
            controller: controller,
            widthOfDot: 10,
            heighOfDot: 10,
            widthOfBackGroundDot: 15,
            heightOfBackGroundDot: 15,
          ),
        ],
      ),
    );
  }
}
