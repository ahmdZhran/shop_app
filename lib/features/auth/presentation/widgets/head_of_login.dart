import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadOfLoginView extends StatelessWidget {
  const HeadOfLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SvgPicture.asset(
        height: 50,
        'assets/images/shop_logo.svg',
      ),
    );
  }
}
