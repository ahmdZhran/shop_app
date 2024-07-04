import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'share_item_or_save_it.dart';
import '../../../../core/utils/text_styles.dart';

class BodyOfItemDetails extends StatelessWidget {
  const BodyOfItemDetails({
    super.key,
    required this.price,
    required this.nameOfProduct,
    required this.description,
  });

  final String price;
  final String nameOfProduct;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: true,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff1C1C1E),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(color: Colors.grey, width: 30, height: 5),
              ),
              30.0.getVerticalSpacer(),
              Text('Price: \$$price', style: CustomTextStyle.medium25),
              20.0.getVerticalSpacer(),
              Text('Name: $nameOfProduct', style: CustomTextStyle.medium15),
              20.0.getVerticalSpacer(),
              ReadMoreText(
                'Description: $description',
                trimLines: 6,
                colorClickableText: ColorManager.kPrimaryColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: CustomTextStyle.medium15,
              ),
              const SizedBox(height: 20),
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
      ),
    );
  }
}
