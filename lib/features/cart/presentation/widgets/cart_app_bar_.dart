import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/back_arrow_button.dart';

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
