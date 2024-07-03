import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/text_styles.dart';
import '../../data/model/onboarding_data.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingControllerWidget extends StatelessWidget {
  const OnBoardingControllerWidget(
      {super.key, required PageController controller, this.onPageChanged})
      : _controller = controller;
  final PageController _controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 600,
        width: 410,
        child: PageView.builder(
          controller: _controller,
          onPageChanged: onPageChanged,
          itemCount: onBoardingData.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SvgPicture.asset(
                  onBoardingData[index].image,
                ),
                const SizedBox(
                  height: 90,
                ),
                CustomSmoothPageIndicator(
                  controller: _controller,
                  widthOfBackGroundDot: 25,
                  heightOfBackGroundDot: 7,
                  widthOfDot: 10,
                  heighOfDot: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Text(
                        onBoardingData[index].title,
                        style: CustomTextStyle.soraBoldstyleBold,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        onBoardingData[index].subTitle,
                        style: CustomTextStyle.regular14,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
