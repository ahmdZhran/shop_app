import 'package:flutter/widgets.dart';
import 'package:shop_app/core/networking/api_error_handler.dart';
import 'package:shop_app/core/networking/api_result.dart';
import 'package:shop_app/features/profile/data/api/profile_api_service.dart';
import 'package:shop_app/features/profile/data/models/profile_user_response.dart';

import '../../../../core/helper/shared_prefrence.dart';
import '../../../../core/helper/shared_prefrence_keys.dart';

class ProfileRepo {
  final ProfileApiService _profileApiService;

  ProfileRepo(this._profileApiService);

  Future<ApiResult<ProfileUserResponse>> getProfileData() async {
    try {
      final response = await _profileApiService.getProfileData(
          '${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}');
      debugPrint("user data response : $response");
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
