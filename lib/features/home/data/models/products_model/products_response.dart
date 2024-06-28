import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_response.g.dart';

@JsonSerializable()
class ProductResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  List<ProductsData>? productData;
  ProductResponse({this.status, this.message, this.productData});
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@JsonSerializable()
class ProductsData {
  int? id;
  double? price;
  @JsonKey(name: 'old_price')
  double? oldPrice;
  int? discount;
  @JsonKey(name: 'image')
  String? image;
  String? name;
  String? description;
  @JsonKey(name: 'in_favorites')
  bool? inFavorites;
  @JsonKey(name: 'in_cart')
  bool? inCart;

  ProductsData({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.inFavorites,
    this.inCart,
  });
  factory ProductsData.fromJson(Map<String, dynamic> json) => _$ProductsDataFromJson(json);
}
