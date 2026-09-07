import 'paypal_link.dart';

class PaypalOrder {
  final String id;
  final String status;
  final List<PaypalLink> links;

  const PaypalOrder({required this.id, required this.status, required this.links});
}
