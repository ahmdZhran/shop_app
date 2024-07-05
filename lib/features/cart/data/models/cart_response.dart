import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_response.g.dart';

@JsonSerializable()
class CartResponse {
  bool? status;
  String? message;
  CartData? data;

  CartResponse({this.status, this.message, this.data});

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

@JsonSerializable()
class CartData {
  @JsonKey(name: 'cart_items')
  List<dynamic>? cartItems;
  @JsonKey(name: 'sub_total')
  double? subTotal;
  double? total;

  CartData({this.cartItems, this.subTotal, this.total});

  factory CartData.fromJson(Map<String, dynamic> json) =>
      _$CartDataFromJson(json);
}
