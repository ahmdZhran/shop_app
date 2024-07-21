import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/text_styles.dart';

class PaymentSectionWidget extends StatelessWidget {
  const PaymentSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment',
                style: CustomTextStyle.medium18,
              ),
              TextButton(
                child: Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorManager.kPrimaryColor,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/mastercard-full-svgrepo-com.svg',
                height: 60,
              ),
              20.0.getHorizontalSpacer(),
              const Text(
                '**** **** **** 2718',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
