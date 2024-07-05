import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
class CartApiService{
  factory CartApiService(Dio dio, {String baseUrl}) = _CartApiService;

  @GET(CartApiConstants.getCart)
  Future<CartResponse> getCart();
}