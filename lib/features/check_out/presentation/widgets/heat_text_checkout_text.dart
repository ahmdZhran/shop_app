import 'package:flutter/material.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/utils/color_manager.dart';

import '../../../../core/utils/text_styles.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 60),
          child: Text(
            'Shipping address',
            style: CustomTextStyle.medium18,
          ),
        ),
        15.0.getVerticalSpacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManager.kBlackColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ahmed Mohamed',
                        style: CustomTextStyle.medium18
                            .copyWith(fontWeight: FontWeight.bold),
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
                  const Text(
                    '13 Alexandria Gleem\nEgypt,Cairo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
