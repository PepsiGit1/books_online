import 'package:books_online/features/home/data/model/paypal_link_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paypal_order_model.freezed.dart';
part 'paypal_order_model.g.dart';

@freezed
class PaypalOrderModel with _$PaypalOrderModel {
  const factory PaypalOrderModel({required String id, required String status, required List<PaypalLinkModel> links}) = _PaypalOrderModel;

  factory PaypalOrderModel.fromJson(Map<String, dynamic> json) => _$PaypalOrderModelFromJson(json);
}
