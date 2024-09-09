import 'package:json_annotation/json_annotation.dart';
part 'profile_user_data.g.dart';

@JsonSerializable()
class ProfileUserData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String image;
  final int points;
  final int credit;
  final String token;

  ProfileUserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.points,
    required this.credit,
    required this.token,
  });

  factory ProfileUserData.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserDataFromJson(json);
}
