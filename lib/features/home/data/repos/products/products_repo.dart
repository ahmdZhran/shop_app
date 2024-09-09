import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../api/home_api_service.dart';
import '../../models/home_products_model/home_products_response.dart';

class ProductsRepo {
  final HomeApiService _homeApiService;

  ProductsRepo(this._homeApiService);

  Future<ApiResult<HomeProductsResponse>> getHomeProducts() async {
    try {
      final response = await _homeApiService.getHomeProducts();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
