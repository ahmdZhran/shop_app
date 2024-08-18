import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';

class OrderNotConfirmed extends StatelessWidget {
  const OrderNotConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            SvgPicture.asset(
              AppAssets.oroderNotConfirmed,
              height: 200.h,
              width: 200.w,
            ),
            70.0.getVerticalSpacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Payment failed',
                style: CustomTextStyle.medium25.copyWith(
                    color: ColorManager.kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            10.0.getVerticalSpacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "something went wrong we coudn't process your payment. contact our support if you have lost money",
                style: CustomTextStyle.medium25.copyWith(
                  color: ColorManager.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            70.0.getVerticalSpacer(),
            CustomButton(
                color: const Color(0xffD92D20),
                onPressed: () {
                  context.pop();
                },
                text: Text(
                  'Rety payment',
                  style: CustomTextStyle.medium16.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
