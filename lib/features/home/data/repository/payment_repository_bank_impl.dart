import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/data_source/remote/payment_remote_data_source.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';
import 'package:books_online/features/home/domain/repository/payment_bank_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PaymentRepository)
class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource remoteDataSource;

  PaymentRepositoryImpl(this.remoteDataSource);

  @override
  Future<ApiResponse<PaymentModel>> generateBcelQr({required double amount, required String description}) {
    return remoteDataSource.generateBcelQr(amount: amount, description: description);
  }

  @override
  Future<ApiResponse<PaymentModel>> generateJdbQr({required double amount, required String description}) {
    return remoteDataSource.generateJdbQr(amount: amount, description: description);
  }

  @override
  Future<ApiResponse<PaymentModel>> generateIbQr({required double amount, required String description}) {
    return remoteDataSource.generateIbQr(amount: amount, description: description);
  }
}
