import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/animations/animate_do.dart';
import 'package:shop_app/core/utils/app_assets.dart';
import 'package:shop_app/core/utils/color_manager.dart';
import 'package:shop_app/features/main/logic/cubit/nav_bar_cubit.dart';
import 'package:shop_app/features/main/widgets/bottom_nav_bar/icons_bottom_nav_bar.dart';

import '../../logic/cubit/nav_bar_state.dart';
import '../../logic/enums/nav_bar_enum.dart';

class MainBottonNavBar extends StatelessWidget {
  const MainBottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: SizedBox(
        height: 50.h,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: ColorManager.kPrimaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: BlocBuilder<NavBarCubit, NavBarState>(
                builder: (context, state) {
                  final cubit = context.read<NavBarCubit>();
                  return SizedBox(
                    height: 60.h,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconNavBar(
                            selectedIcon: AppAssets.homeActive,
                            unselectedIcon: AppAssets.home,
                            isSelected: cubit.navBarEnum == NavBarEnum.home,
                            onTap: () {
                              cubit.iconSelected(NavBarEnum.home);
                            },
                          ),
                          IconNavBar(
                            selectedIcon: AppAssets.searchActiveSvg,
                            unselectedIcon: AppAssets.search,
                            isSelected: cubit.navBarEnum == NavBarEnum.search,
                            onTap: () {
                              cubit.iconSelected(NavBarEnum.search);
                            },
                          ),
                          IconNavBar(
                            selectedIcon: AppAssets.favoriteActive,
                            unselectedIcon: AppAssets.favorite,
                            isSelected:
                                cubit.navBarEnum == NavBarEnum.favorites,
                            onTap: () {
                              cubit.iconSelected(NavBarEnum.favorites);
                            },
                          ),
                          IconNavBar(
                            selectedIcon: AppAssets.profileActive,
                            unselectedIcon: AppAssets.profile,
                            isSelected: cubit.navBarEnum == NavBarEnum.profile,
                            onTap: () {
                              cubit.iconSelected(NavBarEnum.profile);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
