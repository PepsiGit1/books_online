import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class SearchRemoteDataSource {
  Future<ApiResponse<List<BookModel>>> searchBooks({required String query, int? categoryId});
}

@LazySingleton(as: SearchRemoteDataSource)
class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final ApiClient apiClient;

  SearchRemoteDataSourceImpl(this.apiClient);

  @override
  Future<ApiResponse<List<BookModel>>> searchBooks({required String query, int? categoryId}) async {
    try {
      final response = await apiClient.get(
        ApiEndpoints.searchBooks,
        queryParameters: {if (query.isNotEmpty) 'q': query, if (categoryId != null) 'categoryId': categoryId},
      );

      final data = response.data as Map<String, dynamic>;

      final books = (data['data'] as List<dynamic>).map((json) => BookModel.fromJson(json as Map<String, dynamic>)).toList();

      return ApiResponse.success(books);
    } on DioException catch (e) {
      return ApiResponse.error(e.message ?? 'Failed to search books');
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
