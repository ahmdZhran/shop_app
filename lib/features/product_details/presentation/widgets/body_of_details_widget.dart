import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'share_item_or_save_it.dart';

class BodyOfItemDetails extends StatelessWidget {
  const BodyOfItemDetails(
      {super.key,
      required this.description,
      required this.price,
      required this.nameOfProduct});
  final String description;
  final String price;
  final String nameOfProduct;
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
            Text('Price:$price', style: CustomTextStyle.medium25),
            20.0.getVerticalSpacer(),
            Text('Name:$nameOfProduct', style: CustomTextStyle.medium25),
            20.0.getVerticalSpacer(),
            Text(
              'Description:$description, ',
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
