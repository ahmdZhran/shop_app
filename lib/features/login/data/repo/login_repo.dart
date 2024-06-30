import '../../../../core/networking/api_error_handler.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_services.dart';
import '../models/login_response.dart';

import '../models/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      if (response.status == true) {
        return ApiResult.success(response);
      } else {
        return ApiResult.failure(ErrorHandler.handle(response.message));
      }
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
