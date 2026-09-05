import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_paypal_order_model.freezed.dart';
part 'create_paypal_order_model.g.dart';

@freezed
class CreatePaypalOrderModel with _$CreatePaypalOrderModel {
  const factory CreatePaypalOrderModel({required String value, required String referenceId, required String description, required String customId}) =
      _CreatePaypalOrderModel;

  factory CreatePaypalOrderModel.fromJson(Map<String, dynamic> json) => _$CreatePaypalOrderModelFromJson(json);
}
