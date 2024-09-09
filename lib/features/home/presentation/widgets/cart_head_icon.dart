import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../cart/cubits/cubit/cart_cubit.dart';
import '../../../cart/cubits/cubit/cart_state.dart';

class CartHeadIcon extends StatefulWidget {
  const CartHeadIcon({super.key});

  @override
  State<CartHeadIcon> createState() => _CartHeadIconState();
}

class _CartHeadIconState extends State<CartHeadIcon> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          state.maybeWhen(
            cartSuccess: (items, _) => itemCount = items.length,
            itemAdded: (items, _) => itemCount = items.length,
            orElse: () {},
          );

          return Badge(
            label: Text(
              itemCount.toString(),
              style: TextStyle(color: ColorManager.kWhiteColor),
            ),
            alignment: AlignmentDirectional.topEnd,
            largeSize: 20,
            backgroundColor: Colors.red,
            child: IconButton(
              icon: SvgPicture.asset(
                AppAssets.cart,
                colorFilter: ColorFilter.mode(
                  ColorManager.kPrimaryColor,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                context.pushNamed(Routes.cart);
              },
            ),
          );
        },
      ),
    );
  }
}
