import 'package:dio/dio.dart';


class CartApiService{
  factory CartApiService(Dio dio, {String baseUrl}) = _CartApiService;

  @GET(CartApiConstants.getCart)
  Future<CartResponse> getCart();
}