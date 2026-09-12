// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentHistoryResponseModelImpl _$$PaymentHistoryResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentHistoryResponseModelImpl(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => PaymentHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  meta: PaymentMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PaymentHistoryResponseModelImplToJson(
  _$PaymentHistoryResponseModelImpl instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
