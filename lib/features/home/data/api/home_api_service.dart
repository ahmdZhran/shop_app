import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../cart/data/models/cart_response.dart';
import '../models/banners_models/banner_response.dart';
import '../models/category_models/category_response.dart';
import '../models/home_products_model/home_products_response.dart';
import 'home_api_constatnts.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeApiConstatnts.banners)
  Future<BannerResponse> getBannerDate();

  @GET(HomeApiConstatnts.categories)
  Future<CategoryResponse> getCategories();

  @GET(HomeApiConstatnts.home)
  Future<HomeProductsResponse> getHomeProducts();
}
