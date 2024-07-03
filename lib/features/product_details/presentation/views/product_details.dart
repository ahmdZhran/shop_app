import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBarWidget(),
      ],
    ));
  }
}
