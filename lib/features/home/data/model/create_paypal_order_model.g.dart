// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_paypal_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePaypalOrderModelImpl _$$CreatePaypalOrderModelImplFromJson(
  Map<String, dynamic> json,
) => _$CreatePaypalOrderModelImpl(
  value: json['value'] as String,
  referenceId: json['referenceId'] as String,
  description: json['description'] as String,
  customId: json['customId'] as String,
);

Map<String, dynamic> _$$CreatePaypalOrderModelImplToJson(
  _$CreatePaypalOrderModelImpl instance,
) => <String, dynamic>{
  'value': instance.value,
  'referenceId': instance.referenceId,
  'description': instance.description,
  'customId': instance.customId,
};
