import 'package:shop_app/features/check_out/data/model/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/checkout_repo.dart';
import 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  final CheckoutRepo _checkoutRepo;

  CheckoutCubit(this._checkoutRepo) : super(const CheckoutState.initial());

  Future<void> createPaymentIntent(PaymentIntentInputModel inputModel) async {
    emit(const CheckoutState.paymentLoading());
    try {
      final paymentIntentModel =
          await _checkoutRepo.createPaymentIntent(inputModel);

      emit(CheckoutState.paymentIntentCreated(paymentIntentModel));
      await _checkoutRepo.initPaymentSheet(paymentIntentModel.clientSecret);
      await _checkoutRepo.displayPaymentSheet();
      emit(const CheckoutState.paymentSuccess());
    } catch (e) {
      emit(CheckoutState.paymentError(e.toString()));
    }
  }
}
