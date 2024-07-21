import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import '../widgets/custom_checkout_app_bar.dart';
import '../widgets/heat_text_checkout_text.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCheckouAppBar(),
            HeadTextCheckoutText(),
          ],
        ),
      ),
    ));
  }
}
