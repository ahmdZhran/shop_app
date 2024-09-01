import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/text_styles.dart';
import 'custom_named_container_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String userName;
  final String email;
  final String phone;

  const ProfileInfoWidget({
    super.key,
    required this.userName,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'userName',
            style: CustomTextStyle.medium16
                .copyWith(color: ColorManager.kGreyColor),
          ),
          5.0.getVerticalSpacer(),
          CustomNamedContainerWidget(data: userName),
          10.0.getVerticalSpacer(),
          Text(
            "email",
            style: CustomTextStyle.medium16.copyWith(
              color: ColorManager.kGreyColor,
            ),
          ),
          5.0.getVerticalSpacer(),
          CustomNamedContainerWidget(
            data: email,
          ),
          10.0.getVerticalSpacer(),
          Text(
            "phone",
            style: CustomTextStyle.medium16.copyWith(
              color: ColorManager.kGreyColor,
            ),
          ),
          5.0.getVerticalSpacer(),
          CustomNamedContainerWidget(
            data: phone,
          ),
        ],
      ),
    );
  }
}
