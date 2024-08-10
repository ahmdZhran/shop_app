import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import 'payment_methods_list.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethodsListView(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onPressed: () {},
            text: Text(
              "Next",
              style: CustomTextStyle.soraBoldstyleBold
                  .copyWith(color: Colors.black, fontSize: 16.sp),
            ),
          )
        ],
      ),
    );
  }
}
