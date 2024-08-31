import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/text_styles.dart';
import '../../../core/widgets/custom_buttons.dart';

class EditOrLogOutButtonsWidget extends StatelessWidget {
  const EditOrLogOutButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: Text(
              'Edit Profile',
              style: CustomTextStyle.medium14.copyWith(
                  color: ColorManager.kDarkColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: Text(
              'Log out',
              style: CustomTextStyle.medium16
                  .copyWith(color: Colors.redAccent, fontSize: 15),
            ),
            color: ColorManager.kBlackColor,
          ),
        ),
      ],
    );
  }
}
