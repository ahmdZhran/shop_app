import 'package:shop_app/core/networking/api_error_handler.dart';
import 'package:shop_app/core/networking/api_result.dart';
import 'package:shop_app/features/home/data/api/home_api_service.dart';
import 'package:shop_app/features/home/data/models/banners_models/banner_response.dart';
import 'package:shop_app/features/home/data/models/category_models/category_response.dart';

import '../models/home_products_model/products_response.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<BannerResponse>> getBannerDate() async {
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
