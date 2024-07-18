import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/cart/cubits/cubit/cart_cubit.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/back_arrow_button.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BackArrowButton(),
            Text('Cart', style: CustomTextStyle.medium18),
            IconButton(
                onPressed: () {
                  context.read<CartCubit>().clearCartItems();
                },
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
