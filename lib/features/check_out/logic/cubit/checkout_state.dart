import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/payment_intetnt_model/payment_intetn_model.dart';
part 'checkout_state.freezed.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = Initial;
  const factory CheckoutState.paymentLoading() = PaymentLoading;
  const factory CheckoutState.paymentIntentCreated(
      PaymentIntentModel paymentIntentModel) = PaymentIntentCreated;
  const factory CheckoutState.paymentSuccess() = PaymentSuccess;
  const factory CheckoutState.paymentError({required String message}) = PaymentError;
}
