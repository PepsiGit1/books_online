import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/features/home/data/model/paypal_order_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class PaymentRemoteDataSource {
  Future<PaypalOrderModel> createPaypalOrder({
    required String value,
    required String referenceId,
    required String description,
    required String customId,
  });
}

@LazySingleton(as: PaymentRemoteDataSource)
class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final ApiClient apiClient;

  PaymentRemoteDataSourceImpl(this.apiClient);

  @override
  Future<PaypalOrderModel> createPaypalOrder({
    required String value,
    required String referenceId,
    required String description,
    required String customId,
  }) async {
    try {
      final response = await apiClient.post(
        options: Options(
          headers: {
            'Authorization':
                'Basic QVZ5Nll0UVM0OEh5aUY1ZGNYd2ZPM25jbFZIckZBd3NSQkY1Vm5CT2Uxc2QwcUFxR3FLazpFWTdGaUFZUU9qTWg1S2tZTTk0aXR1SDZ0a1FrRUFpQw==',
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        'https://mockgateway.com/api/base/paypal-xqkjwe/v2/checkout/orders',
        data: {
          'intent': 'CAPTURE',
          'purchase_units': [
            {
              'amount': {'currency_code': 'USD', 'value': value},
              'reference_id': referenceId,
              'description': description,
              'custom_id': customId,
            },
          ],
        },
      );

      return PaypalOrderModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw Exception('Failed to create PayPal order: ${e.message}');
    }
  }
}
