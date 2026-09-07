import 'package:freezed_annotation/freezed_annotation.dart';

part 'paypal_link_model.freezed.dart';
part 'paypal_link_model.g.dart';

@freezed
class PaypalLinkModel with _$PaypalLinkModel {
  const factory PaypalLinkModel({required String href, required String rel, required String method}) = _PaypalLinkModel;

  factory PaypalLinkModel.fromJson(Map<String, dynamic> json) => _$PaypalLinkModelFromJson(json);
}
