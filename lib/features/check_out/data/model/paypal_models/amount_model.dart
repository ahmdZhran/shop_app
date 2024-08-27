import 'package:freezed_annotation/freezed_annotation.dart';

import 'details_model.dart';

part 'amount_model.g.dart';
@JsonSerializable()
class AmountModel {
  final String total;
  final String currency;
  Details? details;

  AmountModel({
    required this.total,
    required this.currency,
    this.details,
  });

  factory AmountModel.fromJson(Map<String, dynamic> json) =>
      _$AmountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AmountModelToJson(this);
}
