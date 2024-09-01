import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_app/core/networking/api_constants.dart';
import 'package:shop_app/features/profile/data/api/profile_api_constants.dart';
import 'package:shop_app/features/profile/data/models/profile_user_response.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String baseUrl}) = _ProfileApiService;

  @GET(ProfileApiConstants.profile)
  Future<ProfileUserResponse> getProfileData(
    @Header("Authorization") String token,
  );
}
