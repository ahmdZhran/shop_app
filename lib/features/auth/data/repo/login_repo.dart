import 'package:shop_app/core/networking/api_result.dart';
import 'package:shop_app/core/networking/api_services.dart';
import 'package:shop_app/features/auth/data/models/login_response.dart';

import '../models/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(error.toString());
    }
  }
}
