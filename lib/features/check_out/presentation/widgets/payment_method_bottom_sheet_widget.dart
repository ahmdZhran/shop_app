import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../logic/cubit/checkout_cubit.dart';
import '../../logic/cubit/checkout_state.dart';
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
          BlocConsumer<CheckoutCubit, CheckoutState>(
            listener: (context, state) {
              state.maybeWhen(
                paymentSuccess: () {
                  print(
                      'yessssssssssssssssssssssssssssssss we did it+++++++++++++++++++++++++++++ ');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Payment Successful!')),
                  );
                },
                paymentError: (message) {
                  // Handle payment error
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message)),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                paymentLoading: () => const CircularProgressIndicator(),
                orElse: () => CustomButton(
                  onPressed: () {
                    if (state is! PaymentLoading) {
                      final cubit = context.read<CheckoutCubit>();
                      final inputModel = PaymentIntentInputModel(
                        amount: 300,
                        currency: "USD",
                        // Initialize with the necessary fields
                      );
                      cubit.createPaymentIntent(inputModel);
                    }
                  },
                  text: Text(
                    "Next",
                    style: CustomTextStyle.soraBoldstyleBold
                        .copyWith(color: Colors.black, fontSize: 16.sp),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
