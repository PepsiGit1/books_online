import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMyBooksUseCase {
  final ProfileRepository repository;

  GetMyBooksUseCase(this.repository);

  Future<ApiResponse<List<BookModel>>> call({required String userId}) {
    return repository.getMyBooks(userId: userId);
  }
}
