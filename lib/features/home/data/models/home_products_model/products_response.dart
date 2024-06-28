import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_response.g.dart';

@JsonSerializable()
class HomeProductsResponse {
  bool? status;
  String? message;
  HomeProductsData? data;

  HomeProductsResponse({this.status, this.message, this.data});

  factory HomeProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeProductsResponseFromJson(json);
}

@JsonSerializable()
class HomeProductsData {
  List<ProductDetails>? products;

  HomeProductsData({this.products});

  factory HomeProductsData.fromJson(Map<String, dynamic> json) =>
      _$HomeProductsDataFromJson(json);
}

@JsonSerializable()
class ProductDetails {
  int? id;
  int? price;
  @JsonKey(name: 'old_price')
  int? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  @JsonKey(name: 'in_favorites')
  bool? inFavorites;
  @JsonKey(name: 'in_cart')
  bool? inCart;

  ProductDetails({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.images,
    this.inFavorites,
    this.inCart,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);
}
