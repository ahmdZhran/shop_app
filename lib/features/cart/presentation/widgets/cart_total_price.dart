import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/router/routes.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class CartTotalPriceAndCheckOut extends StatelessWidget {
  const CartTotalPriceAndCheckOut({
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
                  '\$${totalPrice.toStringAsFixed(0)}',
                  style: CustomTextStyle.medium16.copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          CustomButton(
            onPressed: () {
              context.pushNamed(arguments: totalPrice, Routes.checkout);
            },
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
