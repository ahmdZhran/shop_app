import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../api/home_api_service.dart';
import '../models/category_models/category_response.dart';

import '../models/home_products_model/home_products_response.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);


  Future<ApiResult<HomeProductsResponse>> getHomeProducts() async {
    try {
      final response = await _homeApiService.getHomeProducts();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
