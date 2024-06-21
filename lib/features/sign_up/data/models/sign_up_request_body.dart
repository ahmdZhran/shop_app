import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String image;

  SignUpRequestBody({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.image,
  });
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
