import 'package:json_annotation/json_annotation.dart';
import 'package:shop_app/features/profile/data/models/profile_user_data.dart';

part 'profile_user_response.g.dart';

@JsonSerializable()
class ProfileUserResponse {
  final bool status;
  final String? message;
  final ProfileUserData data;

  ProfileUserResponse({
    required this.status,
    this.message,
    required this.data,
  });

  factory ProfileUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserResponseFromJson(json);
}
