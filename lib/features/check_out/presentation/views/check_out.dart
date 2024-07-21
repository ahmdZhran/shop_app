import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../widgets/custom_checkout_app_bar.dart';
import '../widgets/heat_text_checkout_text.dart';
import '../widgets/payment_section.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCheckouAppBar(),
            const ShippingAddressSection(),
            20.0.getVerticalSpacer(),
            const PaymentSectionWidget()
          ],
        ),
      ),
    ));
  }
}
