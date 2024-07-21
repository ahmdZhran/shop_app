import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/back_arrow_button.dart';

class CustomCheckouAppBar extends StatelessWidget {
  const CustomCheckouAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12),
      child: Row(
        children: [
          const BackArrowButton(),
          100.0.getHorizontalSpacer(),
          Text(
            'Checkout',
            textAlign: TextAlign.center,
            style: CustomTextStyle.medium18,
          )
        ],
      ),
    );
  }
}
