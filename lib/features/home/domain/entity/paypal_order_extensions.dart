import 'package:collection/collection.dart';
import 'paypal_order.dart';

extension PaypalOrderX on PaypalOrder {
  String? get approveUrl => links.firstWhereOrNull((l) => l.rel == 'approve')?.href;
}
