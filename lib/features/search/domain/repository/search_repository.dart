import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/book_model.dart';

abstract class SearchRepository {
  Future<ApiResponse<List<BookModel>>> searchBooks({required String query, int? categoryId});
}
