import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/check_out/data/model/payment_intent_input_model/payment_intent_input_model.dart';
import '../../data/repo/checkout_repo.dart';
import 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo _checkoutRepo;

  CheckoutCubit(this._checkoutRepo) : super(const CheckoutState.initial());

  Future<void> makePayment(PaymentIntentInputModel inputModel) async {
    print('makePayment calleddddddddddddddddddddddddddddddddddddddddddddddddd');
    emit(const CheckoutState.paymentLoading());
    try {
      bool paymentSuccess =
          await _checkoutRepo.makePayment(paymentIntentInputModel: inputModel);
      if (paymentSuccess) {
        print('Payment was successsssssssssssssssssssssssssssssssss');
        emit(const CheckoutState.paymentSuccess());
      } else {
        emit(const CheckoutState.paymentError(
            message:
                'there is somethng went wronggggggggggggggggggggggggggggggggggggggg '));
      }
    } catch (e) {
      emit(CheckoutState.paymentError(message: e.toString()));
    }
  }
}
