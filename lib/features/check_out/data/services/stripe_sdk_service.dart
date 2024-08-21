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
      print("Payment completed successfully");
      return true;
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
        print('Payment canceled by user');
      } else {
        print('Payment failed: ${e.error.localizedMessage}');
      }
      return false;
    } catch (error) {
      print('Error displaying payment sheet: $error');
      return false;
    }
  }
}