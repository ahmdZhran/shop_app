import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../api/home_api_service.dart';
import '../../models/banners_models/banner_response.dart';
import '../../models/category_models/category_response.dart';
import '../../models/home_products_model/home_products_response.dart';

class HomeRepository {
  final HomeApiService _homeApiService;

  HomeRepository(this._homeApiService);

  Future<ApiResult<BannerResponse>> getBannerData() async {
    try {
      final response = await _homeApiService.getBannerDate();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<CategoryResponse>> getCategories() async {
    try {
      final response = await _homeApiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<HomeProductsResponse>> getHomeProducts() async {
    try {
      final response = await _homeApiService.getHomeProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
