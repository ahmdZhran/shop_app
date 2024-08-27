import 'details_model.dart';

class AmountModel {
  final String total;
  final String currency;
  Details? details;

  AmountModel({required this.total, required this.currency, this.details});

  factory AmountModel.fromJson(Map<String, dynamic> json) => AmountModel(
        total: json['total'] as String,
        currency: json['currency'] as String,
        details: json['details'] == null
            ? null
            : Details.fromJson(json['details'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details?.toJson(),
      };
}
