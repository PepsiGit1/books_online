// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentHistoryModelImpl _$$PaymentHistoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentHistoryModelImpl(
  transactionId: json['transactionId'] as String,
  status: json['status'] as String,
  message: json['message'] as String,
  paymentMethod: json['paymentMethod'] as String,
  amount: (json['amount'] as num).toDouble(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$$PaymentHistoryModelImplToJson(
  _$PaymentHistoryModelImpl instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'status': instance.status,
  'message': instance.message,
  'paymentMethod': instance.paymentMethod,
  'amount': instance.amount,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'userId': instance.userId,
  'id': instance.id,
};
