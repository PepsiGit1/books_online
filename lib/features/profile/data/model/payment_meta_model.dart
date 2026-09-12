import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_meta_model.freezed.dart';
part 'payment_meta_model.g.dart';

@freezed
class PaymentMetaModel with _$PaymentMetaModel {
  const factory PaymentMetaModel({
    required int total,
    required int page,
    required int limit,
    required int totalPages,
    required bool hasNextPage,
    required bool hasPrevPage,
  }) = _PaymentMetaModel;

  factory PaymentMetaModel.fromJson(Map<String, dynamic> json) => _$PaymentMetaModelFromJson(json);
}
