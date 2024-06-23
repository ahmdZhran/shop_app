import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_app/core/networking/api_constants.dart';

import 'home_api_constatnts.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeApiConstatnts.banners)
  Future<HomeResponse> getHomeDate();
}
