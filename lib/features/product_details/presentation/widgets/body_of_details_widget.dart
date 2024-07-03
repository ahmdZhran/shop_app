import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'share_item_or_save_it.dart';

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
            const SaveItemOrShareIt(),
          ],
        ),
      ),
    );
  }
}
