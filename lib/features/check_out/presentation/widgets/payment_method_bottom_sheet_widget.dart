import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/router/routes.dart';
import '../../../../core/utils/text_styles.dart';
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
          BlocConsumer<CheckoutCubit, CheckoutState>(
            listener: (context, state) {
              state.maybeWhen(
                paymentSuccess: () {
                  print('successssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss');
                  Navigator.of(context).pushReplacementNamed(Routes.thankYou);
                },
                paymentError: (message) {
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
                    final cubit = context.read<CheckoutCubit>();
                    final inputModel = PaymentIntentInputModel(
                      amount: (totalPrice * 100).toInt(),
                      currency: "USD",
                    );
                    cubit.makePayment(inputModel);
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
