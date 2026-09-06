import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/domain/repository/book_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllBooksUsecase {
  final BookRepository repository;

  GetAllBooksUsecase(this.repository);

  Future<List<BookModel>> call() {
    return repository.getAllBooks();
  }
}
