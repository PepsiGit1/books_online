import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/auth/%20data/datasource/local/auth_local_datasource.dart';
import 'package:books_online/features/profile/data/datasource/remote/profile_remote_data_source.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';
import 'package:books_online/features/profile/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  ProfileRepositoryImpl(this.remoteDataSource, this.authLocalDataSource);

  @override
  Future<ApiResponse<UserModel>> getMe() {
    return remoteDataSource.getMe();
  }

  @override
  Future<ApiResponse<bool>> logout() async {
    final result = await remoteDataSource.logout();

    if (result.isSuccess) {
      await authLocalDataSource.clearAuth();
    }

    return result;
  }

  @override
  Future<ApiResponse<bool>> changePassword({required String currentPassword, required String newPassword}) {
    return remoteDataSource.changePassword(currentPassword: currentPassword, newPassword: newPassword);
  }
}
