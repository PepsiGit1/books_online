// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMetaModelImpl _$$PaymentMetaModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentMetaModelImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  hasNextPage: json['hasNextPage'] as bool,
  hasPrevPage: json['hasPrevPage'] as bool,
);

Map<String, dynamic> _$$PaymentMetaModelImplToJson(
  _$PaymentMetaModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'totalPages': instance.totalPages,
  'hasNextPage': instance.hasNextPage,
  'hasPrevPage': instance.hasPrevPage,
};
