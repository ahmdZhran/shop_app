import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_app/core/networking/api_constants.dart';

import '../../features/auth/data/models/login_request_body.dart';
import '../../features/auth/data/models/login_response.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
    
  );
}
