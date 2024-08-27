import 'package:json_annotation/json_annotation.dart';

import 'order_item_model.dart';

part 'item_list_model.g.dart';

@JsonSerializable()
class ItemListModel {
  List<OrderItemModel>? orders;

  ItemListModel({this.orders});

  factory ItemListModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemListModelToJson(this);
}
