import 'package:books_online/features/home/data/model/book_model.dart';

abstract class BookRepository {
  Future<List<BookModel>> getAllBooks();

  Future<BookModel> getBookById({required int id});
  Future<String> getSubtitle({required String url});
}
