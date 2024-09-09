import '../../../../core/networking/api_error_handler.dart';
import '../models/sign_up_request_body.dart';
import '../models/sign_up_response.dart';

import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_services.dart';


class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
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
