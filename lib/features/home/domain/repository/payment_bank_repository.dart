import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';

abstract class PaymentRepository {
  Future<ApiResponse<PaymentModel>> generateBcelQr({required double amount, required String description});

  Future<ApiResponse<PaymentModel>> generateJdbQr({required double amount, required String description});

  Future<ApiResponse<PaymentModel>> generateIbQr({required double amount, required String description});
}
