import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'package:shop_app/core/widgets/custom_buttons.dart';
import '../../../../core/utils/color_manager.dart';
import 'detials_of_amount.dart';
import 'payment_method_bottom_sheet_widget.dart';

class CheckoutDetails extends StatelessWidget {
  const CheckoutDetails({super.key, required this.totalPrice});

  final double totalPrice;
  static const double deliveryFee = 50.0;

  @override
  Widget build(BuildContext context) {
    final double finalTotal = totalPrice + deliveryFee;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          80.0.getVerticalSpacer(),
          DetailsOfAmount(
            title: 'Order:',
            value: '\$${totalPrice.toStringAsFixed(0)}',
          ),
          20.0.getVerticalSpacer(),
          DetailsOfAmount(
            title: 'Delivery:',
            value: '\$${deliveryFee.toStringAsFixed(0)}',
          ),
          20.0.getVerticalSpacer(),
          DetailsOfAmount(
            title: 'Total:',
            value: '\$${finalTotal.toStringAsFixed(0)}',
          ),
          100.0.getVerticalSpacer(),
          CustomButton(
            onPressed: () {
              showBottomSheet(
                  backgroundColor: ColorManager.kBlackColor,
                  showDragHandle: true,
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  });
            },
            text: Text(
              'Submet Order',
              style: CustomTextStyle.medium16,
            ),
          ),
        ],
      ),
    );
  }
}



