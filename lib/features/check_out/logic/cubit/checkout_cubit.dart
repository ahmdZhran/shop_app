import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../data/repo/checkout_repo.dart';
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
}
