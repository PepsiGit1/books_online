import 'package:books_online/features/home/domain/repository/book_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBookSubtitleUsecase {
  final BookRepository repository;

  GetBookSubtitleUsecase(this.repository);

  Future<String> call({required String url}) {
    return repository.getSubtitle(url: url);
  }
}
