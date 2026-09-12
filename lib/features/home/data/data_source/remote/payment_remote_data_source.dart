import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentRemoteDataSource {
  Future<ApiResponse<PaymentModel>> generateBcelQr({required double amount, required String description});

  Future<ApiResponse<PaymentModel>> generateJdbQr({required double amount, required String description});

  Future<ApiResponse<PaymentModel>> generateIbQr({required double amount, required String description});
}

@LazySingleton(as: PaymentRemoteDataSource)
class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final ApiClient apiClient;

  PaymentRemoteDataSourceImpl(this.apiClient);

  @override
  Future<ApiResponse<PaymentModel>> generateBcelQr({required double amount, required String description}) async {
    try {
      final response = await apiClient.post(ApiEndpoints.paymentBcel, data: {'amount': 1, 'description': description});

      return ApiResponse.success(PaymentModel.fromJson(response.data['data']));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PaymentModel>> generateJdbQr({required double amount, required String description}) async {
    try {
      final response = await apiClient.post(ApiEndpoints.paymentJdb, data: {'amount': amount, 'description': description});

      return ApiResponse.success(PaymentModel.fromJson(response.data['data']));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PaymentModel>> generateIbQr({required double amount, required String description}) async {
    try {
      final response = await apiClient.post(ApiEndpoints.paymentIb, data: {'amount': amount, 'description': description});

      return ApiResponse.success(PaymentModel.fromJson(response.data['data']));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
