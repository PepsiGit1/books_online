import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RefreshTokenUseCase {
  final AuthRepository repository;

  RefreshTokenUseCase(this.repository);

  Future<ApiResponse<AuthModel>> call() {
    return repository.refreshToken();
  }
}
