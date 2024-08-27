import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../data/model/paypal_models/amount_model.dart';
import '../../data/model/paypal_models/details_model.dart';
import '../../data/model/paypal_models/item_list_model.dart';
import '../../data/model/paypal_models/order_item_model.dart';
import '../../data/repo/checkout_repo.dart';
import '../../data/services/api_keys.dart';
import 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo _checkoutRepo;

  CheckoutCubit(this._checkoutRepo) : super(const CheckoutState.initial());

  Future<void> makePayment(PaymentIntentInputModel inputModel) async {
    emit(const CheckoutState.loading());

    try {
      bool paymentSuccess =
          await _checkoutRepo.makePayment(paymentIntentInputModel: inputModel);

      if (paymentSuccess) {
        emit(const CheckoutState.success());
      } else {
        emit(const CheckoutState.failure('Payment was not successful.'));
      }
    } catch (e) {
      emit(CheckoutState.failure('Payment failed: $e'));
    }
  }

    void executePaypalPayment(BuildContext context) {
    final transactionData = _getTransactionData();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientIdPaypal,
        secretKey: ApiKeys.secretPaypalKey,
        transactions: [
          {
            "amount": transactionData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionData.itemList.toJson(),
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

  ({AmountModel amount, ItemListModel itemList}) _getTransactionData() {
    var amount = AmountModel(
        total: "100",
        currency: 'USD',
        details: Details(
          shipping: "0",
          shippingDiscount: 0,
          subtotal: "100",
        ));
    List<OrderItemModel> orders = [
      OrderItemModel(
        currency: "USD",
        name: "Apple",
        price: "4",
        quantity: 10,
      ),
      OrderItemModel(
        currency: "USD",
        name: "Screen",
        price: "5",
        quantity: 12,
      )
    ];
    var itemList = ItemListModel(orders: orders);

    return (amount: amount, itemList: itemList);
  }
}
