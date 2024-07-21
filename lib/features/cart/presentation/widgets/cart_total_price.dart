import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class CartTotolPrice extends StatelessWidget {
  const CartTotolPrice({
    super.key,
    required this.totalPrice,
  });
  final double totalPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'total Amount:',
                  style: CustomTextStyle.medium16
                      .copyWith(color: ColorManager.kPrimaryColor),
                ),
                Text(
                  '\$${totalPrice.toStringAsFixed(1)}',
                  style: CustomTextStyle.medium16
                      .copyWith(color: ColorManager.kPrimaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          CustomButton(
            onPressed: () {},
            text: Text(
              'Check Out',
              style: CustomTextStyle.medium16,
            ),
          ),
        ],
      ),
    );
  }
}
