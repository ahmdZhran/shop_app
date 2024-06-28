import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_app/core/networking/api_constants.dart';
import 'package:shop_app/features/home/data/models/banners_models/banner_response.dart';

import '../models/category_models/category_response.dart';
import '../models/products_model/products_response.dart';
import 'home_api_constatnts.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeApiConstatnts.banners)
  Future<BannerResponse> getBannerDate();
  
  @GET(HomeApiConstatnts.categories)
  Future<CategoryResponse> getCategories();

  @GET(HomeApiConstatnts.products)
  Future<ProductResponse> getProducts();
}
