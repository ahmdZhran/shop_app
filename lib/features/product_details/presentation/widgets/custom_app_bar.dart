import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../../core/utils/app_assets.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: SvgPicture.asset(
                  AppAssets.arroBack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
