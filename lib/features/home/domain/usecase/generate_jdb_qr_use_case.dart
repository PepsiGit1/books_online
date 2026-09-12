import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';
import 'package:books_online/features/home/domain/repository/payment_bank_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GenerateJdbQrUseCase {
  final PaymentRepository repository;

  GenerateJdbQrUseCase(this.repository);

  Future<ApiResponse<PaymentModel>> call({required double amount, required String description}) {
    return repository.generateJdbQr(amount: amount, description: description);
  }
}
