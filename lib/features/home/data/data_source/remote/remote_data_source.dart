import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/paypal_order_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  Future<ApiResponse<List<CategoryModel>>> getAllCategories();
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
        ApiEndpoints.paypal,
        options: Options(headers: {'Authorization': dotenv.env['APP_TOKEN_PAYPAL'], 'Content-Type': 'application/x-www-form-urlencoded'}),
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
      final fullUrl = url.startsWith('http') ? url : '${ApiEndpoints.baseUrl}$url';

      final response = await apiClient.get(fullUrl, options: Options(responseType: ResponseType.plain));

      return response.data?.toString() ?? '';
    } on DioException catch (e) {
      throw Exception('Failed to get subtitle: ${e.message}');
    }
  }

  @override
  Future<ApiResponse<List<CategoryModel>>> getAllCategories() async {
    try {
      final response = await apiClient.get(ApiEndpoints.category);

      final data = response.data as Map<String, dynamic>;

      final categories = (data['data'] as List<dynamic>).map((json) => CategoryModel.fromJson(json as Map<String, dynamic>)).toList();

      return ApiResponse.success(categories);
    } on DioException catch (e) {
      return ApiResponse.error(e.message ?? 'Failed to get categories');
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
