import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/profile/data/model/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class ProfileRemoteDataSource {
  Future<ApiResponse<UserModel>> getMe();
  Future<ApiResponse<bool>> logout();
  Future<ApiResponse<bool>> changePassword({required String currentPassword, required String newPassword});
}

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiClient apiClient;

  ProfileRemoteDataSourceImpl(this.apiClient);

  @override
  Future<ApiResponse<UserModel>> getMe() async {
    try {
      final response = await apiClient.get('/user/me');

      final data = response.data['data'];

      return ApiResponse.success(UserModel.fromJson(data as Map<String, dynamic>));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<bool>> logout() async {
    try {
      await apiClient.post(ApiEndpoints.logout);

      return ApiResponse.success(true);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<bool>> changePassword({required String currentPassword, required String newPassword}) async {
    try {
      await apiClient.put(ApiEndpoints.changePassword, data: {'currentPassword': currentPassword, 'newPassword': newPassword});

      return ApiResponse.success(true);
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
