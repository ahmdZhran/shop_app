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

Map<String, dynamic> _$BannerResponseToJson(BannerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.bannerData,
    };

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      category: json['category'],
      product: json['product'],
    );

Map<String, dynamic> _$BannerDataToJson(BannerData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'category': instance.category,
      'product': instance.product,
    };
