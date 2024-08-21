import 'package:flutter/material.dart';
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
      // Assuming payment is confirmed within presentPaymentSheet
      print("Payment completed successfully");
      return true;
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
        // Handle the case where the user cancels the payment
        print('Payment canceled by user');
        return false;
      } else {
        // Handle any other Stripe-specific errors
        print('Payment failed: ${e.error.localizedMessage}');
        return false;
      }
    } catch (error) {
      // Handle any non-Stripe exceptions
      print('Error displaying payment sheet: $error');
      return false;
    }
  }
}
