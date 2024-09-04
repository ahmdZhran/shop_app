import 'package:flutter_stripe/flutter_stripe.dart';

class StripeSdkService {
  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Ahmed', // Name of the business owner
      ),
    );
  }

   Future<bool> displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      return true;
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
      } else {
      }
      return false;
    } catch (error) {
      return false;
    }
  }
}