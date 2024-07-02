import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../api/home_api_service.dart';
import '../../models/banners_models/banner_response.dart';

class BannerRepo {
  final HomeApiService _homeApiService;

  BannerRepo(this._homeApiService);
  Future<ApiResult<BannerResponse>> getBannerDate() async {
    try {
      final response = await _homeApiService.getBannerDate();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
