// import 'package:shop_app/core/networking/api_error_handler.dart';
// import 'package:shop_app/core/networking/api_result.dart';
// import 'package:shop_app/features/cart/data/api/cart_api_service.dart';

// import '../models/cart_item_model.dart';

// class CartRepo{
//  final CartApiService _cartApiService;
//  CartRepo(this._cartApiService);

//  Future<ApiResult<CartResponse>> getCart() async {
//    try {
//      final response = await _cartApiService.getCart();
//      return ApiResult.success(response);
//    } catch (error) {
//      return ApiResult.failure(ErrorHandler.handle(error));
//    }
//  } 
// }