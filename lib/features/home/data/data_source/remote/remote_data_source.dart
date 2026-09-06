import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
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
  Future<List<BookModel>> getAllBooks();

  Future<BookModel> getBookById({required int id});

  Future<String> getSubtitle({required String url});
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
        ApiEndpoints.paypal,
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

  @override
  Future<List<BookModel>> getAllBooks() async {
    try {
      final response = await apiClient.get(ApiEndpoints.book);

      final data = response.data as Map<String, dynamic>;

      final books = data['data'] as List<dynamic>;

      return books.map((book) => BookModel.fromJson(book as Map<String, dynamic>)).toList();
    } on DioException catch (e) {
      throw Exception('Failed to get books: ${e.message}');
    }
  }

  @override
  Future<BookModel> getBookById({required int id}) async {
    try {
      final response = await apiClient.get('${ApiEndpoints.book}/$id');

      final data = response.data as Map<String, dynamic>;

      return BookModel.fromJson(data['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw Exception('Failed to get book: ${e.message}');
    }
  }

  @override
  Future<String> getSubtitle({required String url}) async {
    try {
      final response = await apiClient.get(url);
      return response.data ?? '';
    } on DioException catch (e) {
      throw Exception('Failed to get subtitle: ${e.message}');
    }
  }
}
