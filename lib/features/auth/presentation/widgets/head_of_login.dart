import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadOfSignInView extends StatelessWidget {
  const HeadOfSignInView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SvgPicture.asset(
        height: 45.h,
        'assets/images/shop_logo.svg',
      ),
    );
  }
}
