import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/router/routes.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'package:shop_app/core/widgets/custom_toast.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../logic/cubit/checkout_cubit.dart';
import '../../logic/cubit/checkout_state.dart';
import 'payment_methods_list.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key, required this.totalPrice});
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const PaymentMethodsListView(),
          const SizedBox(height: 32),
          BlocListener<CheckoutCubit, CheckoutState>(
            listener: (context, state) {
              state.when(
                  initial: () {},
                  loading: () {},
                  success: () {
                    context.pushNamed(Routes.thankYou);
                  },
                  failure: (error) {
                    ShowToast.showToastErrorBottom(message: error);
                  });
            },
            child: BlocBuilder<CheckoutCubit, CheckoutState>(
              builder: (context, state) {
                return state.when(
                  initial: () => CustomButton(
                    onPressed: () {
                      context.read<CheckoutCubit>().makePayment(
                            PaymentIntentInputModel(
                              amount: totalPrice.toInt() * 100,
                              currency: 'USD',
                            ),
                          );
                    },
                    text: Text('Next',
                        style: CustomTextStyle.soraBoldstyleBold
                            .copyWith(color: Colors.black, fontSize: 16.sp)),
                  ),
                  loading: () => const CircularProgressIndicator(),
                  success: () => const Text('Payment successful!'),
                  failure: (errorMessage) => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
