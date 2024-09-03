import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/animations/animate_do.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/color_manager.dart';

import 'icons_bottom_nav_bar.dart';

class MainBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const MainBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconNavBar(
                          selectedIcon: AppAssets.homeActive,
                          unselectedIcon: AppAssets.home,
                          isSelected: selectedIndex == 0,
                          onTap: () => onItemTapped(0),
                        ),
                        IconNavBar(
                          selectedIcon: AppAssets.searchActiveSvg,
                          unselectedIcon: AppAssets.search,
                          isSelected: selectedIndex == 1,
                          onTap: () => onItemTapped(1),
                        ),
                        IconNavBar(
                          selectedIcon: AppAssets.favoriteActive,
                          unselectedIcon: AppAssets.favorite,
                          isSelected: selectedIndex == 2,
                          onTap: () => onItemTapped(2),
                        ),
                        IconNavBar(
                          selectedIcon: AppAssets.profileActive,
                          unselectedIcon: AppAssets.profile,
                          isSelected: selectedIndex == 3,
                          onTap: () => onItemTapped(3),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
