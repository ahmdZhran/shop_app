import 'package:flutter/material.dart';
import '../../../../core/networking/dio_factory.dart';
import '../model/payment_intent_input_model/payment_intent_input_model.dart';
import '../model/payment_intent_model/payment_intent_model.dart';
import '../services/api_keys.dart';
import '../services/stripe_sdk_service.dart';
import '../services/stripe_service.dart';

class CheckoutRepo {
  final StripeService _stripeService;
  final StripeSdkService _sdkService;

  CheckoutRepo(this._stripeService, this._sdkService);

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel inputModel) async {
    try {
      await DioFactory.setCustomToken(ApiKeys.stripeSecretKey);
      return await _stripeService.createPaymentIntent(inputModel);
    } catch (e) {
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
      rethrow;
    }
  }

  Future<bool> displayPaymentSheet() async {
    try {
      return await _sdkService.displayPaymentSheet();
    } catch (e) {
      return false;
    }
  }

  Future<bool> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      debugPrint('Creating payment intent...');

      var paymentIntentModel =
          await createPaymentIntent(paymentIntentInputModel);
      debugPrint('Initializing payment sheet...');
      await initPaymentSheet(paymentIntentModel.clientSecret);
      debugPrint('Displaying payment sheet...');
      bool paymentSuccess = await displayPaymentSheet();
      if (paymentSuccess) {
        debugPrint('Payment completed successfully');
        return true;
      } else {
        debugPrint('Payment sheet canceled or failed');
      }
      return false;
    } catch (e) {
      debugPrint('Payment failed: $e');
      return false;
    }
  }
}
