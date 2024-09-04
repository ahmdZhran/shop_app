// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      points: (json['points'] as num?)?.toInt(),
      credit: (json['credit'] as num?)?.toInt(),
      token: json['token'] as String?,
    );
