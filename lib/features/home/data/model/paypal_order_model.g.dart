// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paypal_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaypalOrderModelImpl _$$PaypalOrderModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaypalOrderModelImpl(
  id: json['id'] as String,
  status: json['status'] as String,
  links:
      (json['links'] as List<dynamic>)
          .map((e) => PaypalLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$PaypalOrderModelImplToJson(
  _$PaypalOrderModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'links': instance.links,
};
