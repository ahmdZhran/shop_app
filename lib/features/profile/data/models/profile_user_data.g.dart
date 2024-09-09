// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileUserData _$ProfileUserDataFromJson(Map<String, dynamic> json) =>
    ProfileUserData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String,
      points: (json['points'] as num).toInt(),
      credit: (json['credit'] as num).toInt(),
      token: json['token'] as String,
    );

