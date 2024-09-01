import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/banners_models/banner_response.dart';
import '../models/category_models/category_response.dart';
import '../models/home_products_model/home_products_response.dart';
import 'home_api_constants.dart';

part "home_api_service.g.dart";

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeApiConstants.banners)
  Future<BannerResponse> getBannerDate();

  @GET(HomeApiConstants.categories)
  Future<CategoryResponse> getCategories();

  @GET(HomeApiConstants.home)
  Future<HomeProductsResponse> getHomeProducts();
}
