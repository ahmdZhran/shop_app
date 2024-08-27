// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemListModel _$ItemListModelFromJson(Map<String, dynamic> json) =>
    ItemListModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemListModelToJson(ItemListModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
