import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../data/model/paypal_models/amount_model.dart';
import '../../data/repo/checkout_repo.dart';
import '../../data/services/api_keys.dart';
import 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo _checkoutRepo;

  CheckoutCubit(this._checkoutRepo) : super(const CheckoutState.initial());

  Future<void> makePaymentWithStripe(PaymentIntentInputModel inputModel) async {
    emit(const CheckoutState.checkoutLoading());

    try {
      bool paymentSuccess =
          await _checkoutRepo.makePayment(paymentIntentInputModel: inputModel);

      if (paymentSuccess) {
        emit(const CheckoutState.checkoutSuccess());
      } else {
        emit(
            const CheckoutState.checkoutFailure('Payment was not successful.'));
      }
    } catch (e) {
      emit(CheckoutState.checkoutFailure('Payment failed: $e'));
    }
  }

  void makePaymentWithPayPal(BuildContext context, double totalPrice) {
    final amount = AmountModel(
      total: totalPrice.toStringAsFixed(2),
      currency: 'USD',
    );

    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientIdPaypal,
        secretKey: ApiKeys.secretPaypalKey,
        transactions: [
          {
            "amount": amount.toJson(),
            "description": "The payment transaction description.",
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
          log('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }
}
