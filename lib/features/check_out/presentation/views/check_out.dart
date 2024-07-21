import 'package:flutter/material.dart';
import '../widgets/custom_checkout_app_bar.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: CustomCheckouAppBar(),
      ),
    ));
  }
}
