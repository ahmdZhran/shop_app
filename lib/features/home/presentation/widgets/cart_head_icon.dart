import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/app_assets.dart';

class CartHeadIcon extends StatelessWidget {
  const CartHeadIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}
