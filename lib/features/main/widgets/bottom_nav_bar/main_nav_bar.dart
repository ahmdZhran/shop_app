import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/animations/animate_do.dart';
import '../../../../core/utils/color_manager.dart';

import 'nav_bar_bloc_builder.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: ColorManager.kPrimaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: const NavBottomBlocBuilder(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
