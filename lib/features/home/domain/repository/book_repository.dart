import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';

abstract class BookRepository {
  Future<List<BookModel>> getAllBooks();

  Future<BookModel> getBookById({required int id});

  Future<String> getSubtitle({required String url});

  Future<ApiResponse<List<CategoryModel>>> getAllCategories();
}
