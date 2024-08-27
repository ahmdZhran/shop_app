// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmountModel _$AmountModelFromJson(Map<String, dynamic> json) => AmountModel(
      total: json['total'] as String,
      currency: json['currency'] as String,
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmountModelToJson(AmountModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'currency': instance.currency,
      'details': instance.details,
    };
