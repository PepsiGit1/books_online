import 'package:injectable/injectable.dart';

import '../entity/paypal_order.dart';
import '../repository/payment_repository.dart';

@injectable
class CreatePaypalOrder {
  final PaymentRepository repository;

  CreatePaypalOrder(this.repository);

  Future<PaypalOrder> call({required String value, required String referenceId, required String description, required String customId}) {
    return repository.createPaypalOrder(value: value, referenceId: referenceId, description: description, customId: customId);
  }
}
