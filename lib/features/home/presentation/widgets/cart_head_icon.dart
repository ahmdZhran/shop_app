import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/di/dependency_injection.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../cart/cubits/cubit/cart_cubit.dart';

class CartHeadIcon extends StatelessWidget {
  const CartHeadIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: BlocProvider(
        create: (context) => CartCubit(getIt()),
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
