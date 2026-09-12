import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_history_model.dart';
import 'payment_meta_model.dart';

part 'payment_history_response_model.freezed.dart';
part 'payment_history_response_model.g.dart';

@freezed
class PaymentHistoryResponseModel with _$PaymentHistoryResponseModel {
  const factory PaymentHistoryResponseModel({required List<PaymentHistoryModel> data, required PaymentMetaModel meta}) = _PaymentHistoryResponseModel;

  factory PaymentHistoryResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentHistoryResponseModelFromJson(json);
}
