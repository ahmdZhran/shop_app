import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'package:shop_app/core/widgets/back_arrow_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CartAppBar(),
        ],
      ),
    );
  }
}

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BackArrowButton(),
            Text('Cart', style: CustomTextStyle.medium18),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: ColorManager.kPrimaryColor,
                )),
          ],
        ),
      ),
    );
  }
}
