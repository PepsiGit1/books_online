import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/domain/repository/book_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllCategoriesUsecase {
  final BookRepository repository;

  GetAllCategoriesUsecase(this.repository);

  Future<ApiResponse<List<CategoryModel>>> call() {
    return repository.getAllCategories();
  }
}
