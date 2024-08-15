// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntentInputModel _$PaymentIntentInputModelFromJson(
        Map<String, dynamic> json) =>
    PaymentIntentInputModel(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$PaymentIntentInputModelToJson(
        PaymentIntentInputModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
