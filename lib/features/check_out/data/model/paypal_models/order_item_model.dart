import 'package:json_annotation/json_annotation.dart';

part 'order_item_model.g.dart';

@JsonSerializable()
class OrderItemModel {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  OrderItemModel({this.name, this.quantity, this.price, this.currency});

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);
}
