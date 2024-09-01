import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/paypal_models/amount_model.dart';

part 'checkout_state.freezed.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = CheckoutInitial;
  const factory CheckoutState.checkoutLoading() = CheckoutLoading;
  const factory CheckoutState.checkoutSuccess() = CheckoutSuccess;
  const factory CheckoutState.checkoutFailure(String errorMessage) =
      CheckoutFailure;
  const factory CheckoutState.payPalPaymentPrepared(AmountModel amount) =
      _PayPalPaymentPrepared;
}
