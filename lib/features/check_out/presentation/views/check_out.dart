import 'package:flutter/material.dart';
import '../widgets/checkout_details.dart';
import '../widgets/custom_checkout_app_bar.dart';
import '../widgets/lottie_cart_shopping.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key, required this.totalPrice});
  final double totalPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomCheckouAppBar(),
            const LottieCartShopping(),
            CheckoutDetails(
              totalPrice: totalPrice,
            )
          ],
        ),
      ),
    ));
  }
}
