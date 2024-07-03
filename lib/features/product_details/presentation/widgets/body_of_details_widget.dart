import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class BodyOfItemDetails extends StatelessWidget {
  const BodyOfItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff1C1C1E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.0.getVerticalSpacer(),
            Text('3000', style: CustomTextStyle.medium25),
            20.0.getVerticalSpacer(),
            Text('Smart Screen', style: CustomTextStyle.medium25),
            20.0.getVerticalSpacer(),
            const Text(
              'Description: this is the lap top mak fa5er men ela5er really you cant fina like it in any where exception here we have any think in you mind just think and you will find it ',
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {},
              text: const Text(
                'Add To Cart',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.favorite),
                      const SizedBox(width: 5),
                      const Text('Favorite'),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                      ),
                      const SizedBox(width: 5),
                      const Text('Share'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
