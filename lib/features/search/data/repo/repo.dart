import 'package:shop_app/core/networking/api_error_handler.dart';
import 'package:shop_app/core/networking/api_result.dart';
import 'package:shop_app/features/home/data/api/home_api_service.dart';
import 'package:shop_app/features/home/data/models/home_products_model/home_products_response.dart';

class SearchRepo {
  final HomeApiService _apiApiService;
  SearchRepo(this._apiApiService);

  Future<ApiResult<List<ProductDetails>>> searchOnProducts(String query) async {
    try {
      final response = await _apiApiService.getHomeProducts();
      final filerProducts = response.data?.products
          ?.where((element) =>
              element.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      return ApiResult.success(filerProducts ?? []);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
