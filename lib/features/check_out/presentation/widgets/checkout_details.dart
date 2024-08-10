import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'package:shop_app/core/widgets/custom_buttons.dart';

import '../../../../core/utils/color_manager.dart';
import 'detials_of_amount.dart';

class CheckoutDetails extends StatelessWidget {
  const CheckoutDetails({super.key, required this.totalPrice});

  final double totalPrice;
  static const double deliveryFee = 50.0;

  @override
  Widget build(BuildContext context) {
    final double finalTotal = totalPrice + deliveryFee;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          80.0.getVerticalSpacer(),
          DetailsOfAmount(
            title: 'Order:',
            value: '\$${totalPrice.toStringAsFixed(0)}',
          ),
          20.0.getVerticalSpacer(),
          DetailsOfAmount(
            title: 'Delivery:',
            value: '\$${deliveryFee.toStringAsFixed(0)}',
          ),
          20.0.getVerticalSpacer(),
          DetailsOfAmount(
            title: 'Total:',
            value: '\$${finalTotal.toStringAsFixed(0)}',
          ),
          100.0.getVerticalSpacer(),
          CustomButton(
            onPressed: () {
              showBottomSheet(
                  backgroundColor: ColorManager.kBlackColor,
                  showDragHandle: true,
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  });
            },
            text: Text(
              'Submet Order',
              style: CustomTextStyle.medium16,
            ),
          ),
        ],
      ),
    );
  }
}


class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = const [
    'assets/svg/card.svg',
    'assets/svg/paypal.svg'
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentMethodsItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  isActive: activeIndex == index,
                  image: paymentMethodsItems[index],
                ),
              ),
            );
          }),
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.image,
  });

  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3.w,
            color: isActive ? ColorManager.kPrimaryColor : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? const Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Center(
          child: SvgPicture.asset(
            image,
            width: 60.w,
          ),
        ),
      ),
    );
  }
}
