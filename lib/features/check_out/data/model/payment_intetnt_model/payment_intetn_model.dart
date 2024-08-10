import 'package:json_annotation/json_annotation.dart';

part 'payment_intetn_model.g.dart';

@JsonSerializable()
class PaymentIntentModel {
  final String id;
  final String object;
  final int amount;
  @JsonKey(name: 'amount_capturable')
  final int amountCapturable;
  @JsonKey(name: 'amount_details')
  final AmountDetails amountDetails;
  @JsonKey(name: 'amount_received')
  final int amountReceived;
  final String? application;
  @JsonKey(name: 'application_fee_amount')
  final int? applicationFeeAmount;
  @JsonKey(name: 'automatic_payment_methods')
  final AutomaticPaymentMethods automaticPaymentMethods;
  @JsonKey(name: 'canceled_at')
  final int? canceledAt;
  @JsonKey(name: 'cancellation_reason')
  final String? cancellationReason;
  @JsonKey(name: 'capture_method')
  final String captureMethod;
  @JsonKey(name: 'client_secret')
  final String clientSecret;
  @JsonKey(name: 'confirmation_method')
  final String confirmationMethod;
  final int created;
  final String currency;
  final String? customer;
  final String? description;
  final String? invoice;
  @JsonKey(name: 'last_payment_error')
  final String? lastPaymentError;
  @JsonKey(name: 'latest_charge')
  final String? latestCharge;
  final bool livemode;
  final Map<String, dynamic> metadata;
  @JsonKey(name: 'next_action')
  final String? nextAction;
  @JsonKey(name: 'on_behalf_of')
  final String? onBehalfOf;
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @JsonKey(name: 'payment_method_options')
  final PaymentMethodOptions paymentMethodOptions;
  @JsonKey(name: 'payment_method_types')
  final List<String> paymentMethodTypes;
  final String? processing;
  @JsonKey(name: 'receipt_email')
  final String? receiptEmail;
  final String? review;
  @JsonKey(name: 'setup_future_usage')
  final String? setupFutureUsage;
  final String? shipping;
  final String? source;
  @JsonKey(name: 'statement_descriptor')
  final String? statementDescriptor;
  @JsonKey(name: 'statement_descriptor_suffix')
  final String? statementDescriptorSuffix;
  final String status;
  @JsonKey(name: 'transfer_data')
  final String? transferData;
  @JsonKey(name: 'transfer_group')
  final String? transferGroup;

  PaymentIntentModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    required this.amountDetails,
    required this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    required this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.latestCharge,
    required this.livemode,
    required this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    required this.paymentMethodOptions,
    required this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    required this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentModelFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentIntentModelToJson(this);
}

@JsonSerializable()
class AmountDetails {
  final Map<String, dynamic> tip;

  AmountDetails({required this.tip});

  factory AmountDetails.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$AmountDetailsToJson(this);
}

@JsonSerializable()
class AutomaticPaymentMethods {
  final bool enabled;

  AutomaticPaymentMethods({required this.enabled});

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$AutomaticPaymentMethodsFromJson(json);
  Map<String, dynamic> toJson() => _$AutomaticPaymentMethodsToJson(this);
}

@JsonSerializable()
class PaymentMethodOptions {
  final CardOptions card;
  final LinkOptions link;

  PaymentMethodOptions({required this.card, required this.link});

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodOptionsToJson(this);
}

@JsonSerializable()
class CardOptions {
  final String? installments;
  final String? mandateOptions;
  final String? network;
  @JsonKey(name: 'request_three_d_secure')
  final String requestThreeDSecure;

  CardOptions({
    this.installments,
    this.mandateOptions,
    this.network,
    required this.requestThreeDSecure,
  });

  factory CardOptions.fromJson(Map<String, dynamic> json) =>
      _$CardOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$CardOptionsToJson(this);
}

@JsonSerializable()
class LinkOptions {
  final String? persistentToken;

  LinkOptions({this.persistentToken});

  factory LinkOptions.fromJson(Map<String, dynamic> json) =>
      _$LinkOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$LinkOptionsToJson(this);
}
