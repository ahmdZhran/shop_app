import 'package:json_annotation/json_annotation.dart';

part 'payment_intent_input_model.g.dart';

@JsonSerializable()
class PaymentIntentInputModel {
  final int amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() => _$PaymentIntentInputModelToJson(this);
}
