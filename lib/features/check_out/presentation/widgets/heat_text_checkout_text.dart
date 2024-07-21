import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';

class HeadTextCheckoutText extends StatelessWidget {
  const HeadTextCheckoutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 60),
      child: Text(
        'Shipping address',
        style: CustomTextStyle.medium18,
      ),
    );
  }
}
