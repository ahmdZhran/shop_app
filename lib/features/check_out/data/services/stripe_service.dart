import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../model/payment_intent_input_model/payment_intent_input_model.dart';
import 'api_stripe_contants.dart';

import '../model/payment_intetnt_model/payment_intetn_model.dart';

part 'stripe_service.g.dart';

@RestApi(baseUrl: ApiStripeContants.baseUrl)
abstract class StripeService {
  factory StripeService(Dio dio, {String baseUrl}) = _StripeService;

  @POST(ApiStripeContants.paymentIntent)
  Future<PaymentIntentModel> createPaymentIntent(
    @Body() PaymentIntentInputModel paymentIntentInputModel,
  );
}
