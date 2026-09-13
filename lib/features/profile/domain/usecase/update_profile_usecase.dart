import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateProfileUseCase {
  final ProfileRepository repository;

  UpdateProfileUseCase(this.repository);

  Future<ApiResponse<UserModel>> call({required String name, String? imagePath}) {
    return repository.updateProfile(name: name, imagePath: imagePath);
  }
}
