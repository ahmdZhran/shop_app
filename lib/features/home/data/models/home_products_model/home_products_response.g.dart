// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeProductsResponse _$HomeProductsResponseFromJson(
        Map<String, dynamic> json) =>
    HomeProductsResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HomeProductsData.fromJson(json['data'] as Map<String, dynamic>),
    );



HomeProductsData _$HomeProductsDataFromJson(Map<String, dynamic> json) =>
    HomeProductsData(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );



ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) =>
    ProductDetails(
      id: (json['id'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      oldPrice: (json['old_price'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      inFavorites: json['in_favorites'] as bool?,
      inCart: json['in_cart'] as bool?,
    );

