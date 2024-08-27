import 'package:json_annotation/json_annotation.dart';

part 'details_model.g.dart';

@JsonSerializable()
class Details {
  String? subtotal;
  String? shipping;
  @JsonKey(name: 'shipping_discount')
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}