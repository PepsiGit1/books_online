import '../entity/paypal_order.dart';

abstract class PaymentRepository {
  Future<PaypalOrder> createPaypalOrder({required String value, required String referenceId, required String description, required String customId});
}
