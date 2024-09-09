// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntentModel _$PaymentIntentModelFromJson(Map<String, dynamic> json) =>
    PaymentIntentModel(
      id: json['id'] as String,
      object: json['object'] as String,
      amount: (json['amount'] as num).toInt(),
      amountCapturable: (json['amount_capturable'] as num).toInt(),
      amountDetails: json['amount_details'] == null
          ? null
          : AmountDetails.fromJson(
              json['amount_details'] as Map<String, dynamic>),
      amountReceived: (json['amount_received'] as num).toInt(),
      application: json['application'] as String?,
      applicationFeeAmount: (json['application_fee_amount'] as num?)?.toInt(),
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>),
      canceledAt: (json['canceled_at'] as num?)?.toInt(),
      cancellationReason: json['cancellation_reason'] as String?,
      captureMethod: json['capture_method'] as String,
      clientSecret: json['client_secret'] as String,
      confirmationMethod: json['confirmation_method'] as String,
      created: (json['created'] as num).toInt(),
      currency: json['currency'] as String,
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      invoice: json['invoice'] as String?,
      lastPaymentError: json['last_payment_error'] as String?,
      latestCharge: json['latest_charge'] as String?,
      livemode: json['livemode'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>?,
      nextAction: json['next_action'] as String?,
      onBehalfOf: json['on_behalf_of'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodOptions: json['payment_method_options'] == null
          ? null
          : PaymentMethodOptions.fromJson(
              json['payment_method_options'] as Map<String, dynamic>),
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      processing: json['processing'] as String?,
      receiptEmail: json['receipt_email'] as String?,
      review: json['review'] as String?,
      setupFutureUsage: json['setup_future_usage'] as String?,
      shipping: json['shipping'] as String?,
      source: json['source'] as String?,
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
      status: json['status'] as String,
      transferData: json['transfer_data'] as String?,
      transferGroup: json['transfer_group'] as String?,
    );

Map<String, dynamic> _$PaymentIntentModelToJson(PaymentIntentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'amount': instance.amount,
      'amount_capturable': instance.amountCapturable,
      'amount_details': instance.amountDetails,
      'amount_received': instance.amountReceived,
      'application': instance.application,
      'application_fee_amount': instance.applicationFeeAmount,
      'automatic_payment_methods': instance.automaticPaymentMethods,
      'canceled_at': instance.canceledAt,
      'cancellation_reason': instance.cancellationReason,
      'capture_method': instance.captureMethod,
      'client_secret': instance.clientSecret,
      'confirmation_method': instance.confirmationMethod,
      'created': instance.created,
      'currency': instance.currency,
      'customer': instance.customer,
      'description': instance.description,
      'invoice': instance.invoice,
      'last_payment_error': instance.lastPaymentError,
      'latest_charge': instance.latestCharge,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'next_action': instance.nextAction,
      'on_behalf_of': instance.onBehalfOf,
      'payment_method': instance.paymentMethod,
      'payment_method_options': instance.paymentMethodOptions,
      'payment_method_types': instance.paymentMethodTypes,
      'processing': instance.processing,
      'receipt_email': instance.receiptEmail,
      'review': instance.review,
      'setup_future_usage': instance.setupFutureUsage,
      'shipping': instance.shipping,
      'source': instance.source,
      'statement_descriptor': instance.statementDescriptor,
      'statement_descriptor_suffix': instance.statementDescriptorSuffix,
      'status': instance.status,
      'transfer_data': instance.transferData,
      'transfer_group': instance.transferGroup,
    };

AmountDetails _$AmountDetailsFromJson(Map<String, dynamic> json) =>
    AmountDetails(
      tip: json['tip'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AmountDetailsToJson(AmountDetails instance) =>
    <String, dynamic>{
      'tip': instance.tip,
    };

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AutomaticPaymentMethods(
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
        AutomaticPaymentMethods instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

PaymentMethodOptions _$PaymentMethodOptionsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodOptions(
      card: json['card'] == null
          ? null
          : CardOptions.fromJson(json['card'] as Map<String, dynamic>),
      link: json['link'] == null
          ? null
          : LinkOptions.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodOptionsToJson(
        PaymentMethodOptions instance) =>
    <String, dynamic>{
      'card': instance.card,
      'link': instance.link,
    };

CardOptions _$CardOptionsFromJson(Map<String, dynamic> json) => CardOptions(
      installments: json['installments'] as String?,
      mandateOptions: json['mandateOptions'] as String?,
      network: json['network'] as String?,
      requestThreeDSecure: json['request_three_d_secure'] as String,
    );

Map<String, dynamic> _$CardOptionsToJson(CardOptions instance) =>
    <String, dynamic>{
      'installments': instance.installments,
      'mandateOptions': instance.mandateOptions,
      'network': instance.network,
      'request_three_d_secure': instance.requestThreeDSecure,
    };

LinkOptions _$LinkOptionsFromJson(Map<String, dynamic> json) => LinkOptions(
      persistentToken: json['persistentToken'] as String?,
    );

Map<String, dynamic> _$LinkOptionsToJson(LinkOptions instance) =>
    <String, dynamic>{
      'persistentToken': instance.persistentToken,
    };
