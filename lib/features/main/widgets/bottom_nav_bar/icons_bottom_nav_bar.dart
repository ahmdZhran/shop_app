import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/color_manager.dart';

class IconNavBar extends StatelessWidget {
  const IconNavBar({
    super.key,
    this.onTap,
    required this.icon,
    required this.isSelected,
  });
  final void Function()? onTap;
  final String icon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(icon,
              color: isSelected
                  ? ColorManager.kGreyColor
                  : ColorManager.kBlackColor,
              height: 20)
          .animate(target: isSelected ? 1 : 0)
          .scaleXY(end: 1.2),
    );
  }
}
