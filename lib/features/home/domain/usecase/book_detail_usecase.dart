import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/domain/repository/book_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBookDetailUsecase {
  final BookRepository repository;

  GetBookDetailUsecase(this.repository);

  Future<BookModel> call({required int id}) {
    return repository.getBookById(id: id);
  }
}
