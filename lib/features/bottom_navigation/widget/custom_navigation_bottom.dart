import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/color_manager.dart';
import '../../categorys/presentation/views/category_view.dart';
import '../../home/presentation/views/home_view.dart';
import '../../porfile/views/profile_view.dart';
import '../../search/presentation/views/search_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style13,
      backgroundColor: ColorManager.kPrimaryColor,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const SearchView(),
    const CategoryView(),
    const ProfileView()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        AppAssets.homeActive,
        colorFilter:
            ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        AppAssets.home,
        colorFilter:
            ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
      ),
    ),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          width: 30,
          height: 30,
          AppAssets.searchActiveSvg,
          colorFilter:
              ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        ),
        inactiveIcon: SvgPicture.asset(
          width: 30,
          height: 30,
          AppAssets.searchIconSvg,
          colorFilter:
              ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        )),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          AppAssets.categoryActive,
          colorFilter:
              ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        ),
        inactiveIcon: SvgPicture.asset(
          AppAssets.category,
          colorFilter:
              ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        )),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        AppAssets.profileActive,
        colorFilter:
            ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        AppAssets.profile,
        colorFilter:
            ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
      ),
    ),
  ];
}
