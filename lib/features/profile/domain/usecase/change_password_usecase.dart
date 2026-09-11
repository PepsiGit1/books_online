import 'package:books_online/core/api/api_response.dart';
import 'package:injectable/injectable.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';

@lazySingleton
class ChangePasswordUseCase {
  final ProfileRepository repository;

  ChangePasswordUseCase(this.repository);

  Future<ApiResponse<bool>> call({required String currentPassword, required String newPassword}) {
    return repository.changePassword(currentPassword: currentPassword, newPassword: newPassword);
  }
}
