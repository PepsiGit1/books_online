import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetMeUseCase {
  final ProfileRepository repository;

  GetMeUseCase(this.repository);

  Future<ApiResponse<UserModel>> call() {
    return repository.getMe();
  }
}
