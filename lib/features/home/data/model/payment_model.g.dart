// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      transactionId: json['transactionId'] as String?,
      qrCode: json['qrCode'] as String?,
      link: json['link'] as String?,
      appLink: json['appLink'] as String?,
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'qrCode': instance.qrCode,
      'link': instance.link,
      'appLink': instance.appLink,
    };
