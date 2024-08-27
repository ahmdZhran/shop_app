import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/widgets/custom_toast.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../logic/cubit/checkout_cubit.dart';
import '../../logic/cubit/checkout_state.dart';
import 'payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key, required this.totalPrice});
  final double totalPrice;

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  int selectedPaymentMethodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          PaymentMethodsListView(
            onPaymentMethodSelected: (index) {
              setState(() {
                selectedPaymentMethodIndex = index;
              });
            },
          ),
          const SizedBox(height: 32),
          BlocListener<CheckoutCubit, CheckoutState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: () {
                  Navigator.of(context)
                      .pop(); // Close the bottom sheet on success
                },
                failure: (error) {
                  ShowToast.showToastErrorBottom(message: error);
                },
              );
            },
            child: BlocBuilder<CheckoutCubit, CheckoutState>(
              builder: (context, state) {
                return state.when(
                  initial: () => CustomButton(
                    onPressed: () {
                      if (selectedPaymentMethodIndex == 0) {
                        context.read<CheckoutCubit>().makePaymentWithStripe(
                              PaymentIntentInputModel(
                                amount: (widget.totalPrice * 100).toInt(),
                                currency: 'USD',
                              ),
                            );
                      } else if (selectedPaymentMethodIndex == 1) {
                        context
                            .read<CheckoutCubit>()
                            .makePaymentWithPayPal(context, widget.totalPrice);
                      }
                    },
                    text: Text(
                      'Next',
                      style: CustomTextStyle.soraBoldstyleBold.copyWith(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
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
