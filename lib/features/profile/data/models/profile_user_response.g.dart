// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUserResponse _$ProfileUserResponseFromJson(Map<String, dynamic> json) =>
    ProfileUserResponse(
      status: json['status'] as bool,
      message: json['message'] as String?,
      data: ProfileUserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileUserResponseToJson(
        ProfileUserResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
