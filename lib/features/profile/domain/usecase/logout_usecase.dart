import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutUseCase {
  final ProfileRepository repository;

  LogoutUseCase(this.repository);

  Future<ApiResponse<bool>> call() {
    return repository.logout();
  }
}
