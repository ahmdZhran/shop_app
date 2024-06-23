import 'package:shop_app/core/networking/api_error_handler.dart';
import 'package:shop_app/core/networking/api_result.dart';
import 'package:shop_app/features/home/data/api/home_api_service.dart';
import 'package:shop_app/features/home/data/models/banner_response.dart';

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
}
