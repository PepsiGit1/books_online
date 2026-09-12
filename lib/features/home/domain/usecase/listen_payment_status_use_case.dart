import 'package:books_online/features/home/data/data_source/remote/payment_realtime_data_source.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ListenPaymentStatusUseCase {
  ListenPaymentStatusUseCase(this._dataSource);

  final PaymentRealtimeDataSource _dataSource;

  Stream<Map<String, dynamic>> call({required String transactionId}) {
    return _dataSource.listenPaymentStatus(transactionId: transactionId);
  }
}
