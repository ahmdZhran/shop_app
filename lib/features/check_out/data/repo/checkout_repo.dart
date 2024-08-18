import 'package:shop_app/features/check_out/data/model/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:shop_app/features/check_out/data/services/api_stripe_keys.dart';
import 'package:shop_app/features/check_out/data/services/stripe_sdk_service.dart';
import 'package:shop_app/features/check_out/data/services/stripe_service.dart';
import '../../../../core/networking/dio_factory.dart';
import '../model/payment_intetnt_model/payment_intetn_model.dart';

class CheckoutRepo {
  final StripeService _stripeService;
  final StripeSdkService _sdkService;

  CheckoutRepo(this._stripeService, this._sdkService);

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel inputModel) async {
    try {
      await DioFactory.setCustomToken(
        ApiStripeKeys.stripeSecretKey,
      );
      return await _stripeService.createPaymentIntent(inputModel);
    } catch (e) {
      print('there is an error on creating payment==============');
      rethrow;
    }
  }

  Future<void> initPaymentSheet(String? paymentIntentClientSecret) async {
    if (paymentIntentClientSecret == null) {
      throw Exception('Payment intent client secret cannot be null');
    }

    try {
      await _sdkService.initPaymentSheet(
          paymentIntentClientSecret: paymentIntentClientSecret);
    } catch (e) {
      // Handle and log error
      rethrow;
    }
  }

  Future<void> displayPaymentSheet() async {
    try {
      await _sdkService.displayPaymentSheet();
    } catch (e) {
      // Handle and log error
      rethrow;
    }
  }

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      var paymentIntentModel =
          await createPaymentIntent(paymentIntentInputModel);
      await initPaymentSheet(paymentIntentModel.clientSecret);
      await displayPaymentSheet();
    } catch (e) {
      // Handle and log error
      rethrow;
    }
  }
}
