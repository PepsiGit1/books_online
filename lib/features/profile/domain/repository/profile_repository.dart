import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';

abstract class ProfileRepository {
  Future<ApiResponse<UserModel>> getMe();
  Future<ApiResponse<bool>> logout();
  Future<ApiResponse<bool>> changePassword({required String currentPassword, required String newPassword});
}
