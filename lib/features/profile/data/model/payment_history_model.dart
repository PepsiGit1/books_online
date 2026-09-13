import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_history_model.freezed.dart';
part 'payment_history_model.g.dart';

@freezed
class PaymentHistoryModel with _$PaymentHistoryModel {
  const factory PaymentHistoryModel({
    required String transactionId,
    required String status,
    required String message,
    required String paymentMethod,
    required double amount,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String userId,
    required int id,
  }) = _PaymentHistoryModel;

  factory PaymentHistoryModel.fromJson(Map<String, dynamic> json) => _$PaymentHistoryModelFromJson(json);
}
