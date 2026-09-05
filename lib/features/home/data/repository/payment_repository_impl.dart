import 'package:books_online/features/home/data/data_source/remote/remote_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/paypal_order.dart';
import '../../domain/entity/paypal_link.dart';
import '../../domain/repository/payment_repository.dart';

@LazySingleton(as: PaymentRepository)
class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource remoteDataSource;

  PaymentRepositoryImpl(this.remoteDataSource);

  @override
  Future<PaypalOrder> createPaypalOrder({
    required String value,
    required String referenceId,
    required String description,
    required String customId,
  }) async {
    final model = await remoteDataSource.createPaypalOrder(value: value, referenceId: referenceId, description: description, customId: customId);

    return PaypalOrder(
      id: model.id,
      status: model.status,
      links: model.links.map((l) => PaypalLink(href: l.href, rel: l.rel, method: l.method)).toList(),
    );
  }
}
