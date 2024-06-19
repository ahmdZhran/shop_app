import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/text_styles.dart';

import '../../../../core/utils/color_manager.dart';

class IsHasAnAccount extends StatelessWidget {
  const IsHasAnAccount(
      {super.key, required this.textOne, required this.textTwo, this.onTap});
  final String textOne;
  final String textTwo;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: CustomTextStyle.medium14.copyWith(
              fontWeight: FontWeight.bold,
              color: ColorManager.kGreyColor,
              fontSize: 17),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: onTap,
          child: Text(
            textTwo,
            style: CustomTextStyle.medium14
                .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ],
    );
  }
}
