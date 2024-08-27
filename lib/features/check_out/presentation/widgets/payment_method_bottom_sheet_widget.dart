import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/helper/extensions.dart';
import 'package:shop_app/core/router/routes.dart';
import 'package:shop_app/core/utils/text_styles.dart';
import 'package:shop_app/core/widgets/custom_toast.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../data/model/paypal_models/amount_model.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../data/model/paypal_models/item_list_model.dart';
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

  void excutePaypalPayment(BuildContext context,
      ({AmountModel amount, ItemListModel itemList}) transctoinsData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientIdPaypal,
        secretKey: ApiKeys.secretPaypalKey,
        transactions: [
          {
            "amount": transctoinsData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transctoinsData.itemList.toJson(),
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }
}
