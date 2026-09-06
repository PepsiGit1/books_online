import 'package:books_online/features/home/data/data_source/remote/remote_data_source.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/domain/repository/book_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BookRepository)
class BookRepositoryImpl implements BookRepository {
  final PaymentRemoteDataSource remoteDataSource;

  BookRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<BookModel>> getAllBooks() {
    return remoteDataSource.getAllBooks();
  }

  @override
  Future<BookModel> getBookById({required int id}) {
    return remoteDataSource.getBookById(id: id);
  }

  @override
  Future<String> getSubtitle({required String url}) {
    return remoteDataSource.getSubtitle(url: url);
  }
}
