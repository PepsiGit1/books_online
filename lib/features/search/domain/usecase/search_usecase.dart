import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/search/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchBooksUseCase {
  final SearchRepository repository;

  SearchBooksUseCase(this.repository);

  Future<ApiResponse<List<BookModel>>> call({required String query, int? categoryId}) {
    return repository.searchBooks(query: query, categoryId: categoryId);
  }
}
