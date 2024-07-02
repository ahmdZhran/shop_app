import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../api/home_api_service.dart';
import '../../models/category_models/category_response.dart';

class CategoriesRepo {
  final HomeApiService _homeApiService;

  CategoriesRepo(this._homeApiService);

  Future<ApiResult<CategoryResponse>> getCategories() async {
    try {
      final response = await _homeApiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
