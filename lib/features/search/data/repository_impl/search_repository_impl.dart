import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/search/data/data_source/remote/remote_data_source.dart';
import 'package:books_online/features/search/domain/repository/search_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource remoteDataSource;

  SearchRepositoryImpl(this.remoteDataSource);
  @override
  Future<ApiResponse<List<BookModel>>> searchBooks({required String query, int? categoryId}) {
    return remoteDataSource.searchBooks(query: query, categoryId: categoryId);
  }
}
