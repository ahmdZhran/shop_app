import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/text_styles.dart';
import 'custom_named_container_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'User Name',
            style: CustomTextStyle.medium16
                .copyWith(color: ColorManager.kGreyColor),
          ),
          5.0.getVerticalSpacer(),
          const CustomNamedContainerWidget(data: 'Ahmed Mohamed'),
          10.0.getVerticalSpacer(),
          Text(
            'Email',
            style: CustomTextStyle.medium16.copyWith(
              color: ColorManager.kGreyColor,
            ),
          ),
          5.0.getVerticalSpacer(),
          const CustomNamedContainerWidget(
            data: 'ahmedmohameddx80@gmail.com',
          ),
          10.0.getVerticalSpacer(),
          Text(
            'Phone',
            style: CustomTextStyle.medium16.copyWith(
              color: ColorManager.kGreyColor,
            ),
          ),
          5.0.getVerticalSpacer(),
          const CustomNamedContainerWidget(
            data: 'ahmedmohameddx80@gmail.com',
          ),
        ],
      ),
    );
  }
}
