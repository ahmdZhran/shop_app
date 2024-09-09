// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) =>
    BannerResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      bannerData: (json['data'] as List<dynamic>?)
          ?.map((e) => BannerData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      category: json['category'],
      product: json['product'],
    );
