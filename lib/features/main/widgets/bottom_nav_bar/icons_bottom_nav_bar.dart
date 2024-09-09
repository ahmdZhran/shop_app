import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/color_manager.dart';

class IconNavBar extends StatelessWidget {
  const IconNavBar({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.selectedIcon,
    required this.unselectedIcon,
  });
  final void Function() onTap;
  final String selectedIcon;
  final String unselectedIcon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        isSelected ? selectedIcon : unselectedIcon,
        colorFilter:
            ColorFilter.mode(ColorManager.kBlackColor, BlendMode.srcIn),
        height: 25,
        width: 25,
      ).animate(target: isSelected ? 1 : 0).scaleXY(end: 1.2),
    );
  }
}
