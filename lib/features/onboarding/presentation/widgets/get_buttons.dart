import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../data/model/onboarding_data.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required PageController controller,
    required this.currentIndex,
    required this.onPressed,
  }) : _controller = controller;

  final PageController _controller;
  final int currentIndex;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            onPressed: onPressed,
            text: Text(
              AppStrigns.getStarted,
              style: CustomTextStyle.semiBold16
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        onPressed: () {
          _controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
        },
        text: Text(
          AppStrigns.next,
          style:
              CustomTextStyle.semiBold16.copyWith(fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
