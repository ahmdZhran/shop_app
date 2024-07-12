import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/features/cart/cubits/cubit/cart_cubit.dart';
import 'package:shop_app/features/cart/data/repos/cart_repo.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/app_assets.dart';

class CartHeadIcon extends StatelessWidget {
  const CartHeadIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(CartRepo()),
      child: Align(
        alignment: Alignment.topRight,
        child: IconButton(
          icon: SvgPicture.asset(
            AppAssets.cart,
            colorFilter:
                ColorFilter.mode(ColorManager.kPrimaryColor, BlendMode.srcIn),
          ),
          onPressed: () {
            context.pushNamed(Routes.cart);
          },
        ),
      ),
    );
  }
}
