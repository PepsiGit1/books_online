import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/%20data/model/auth_request_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<ApiResponse<AuthModel>> register(RegisterRequestModel request);

  Future<ApiResponse<AuthModel>> login(LoginRequestModel request);

  Future<ApiResponse<AuthModel>> refreshToken();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<ApiResponse<AuthModel>> register(RegisterRequestModel request) async {
    try {
      final response = await apiClient.post(ApiEndpoints.register, data: request.toJson());

      final data = response.data['data'];

      return ApiResponse.success(AuthModel.fromJson(data as Map<String, dynamic>));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<AuthModel>> login(LoginRequestModel request) async {
    try {
      final response = await apiClient.post(ApiEndpoints.login, data: request.toJson());

      final data = response.data['data'];

      return ApiResponse.success(AuthModel.fromJson(data as Map<String, dynamic>));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<AuthModel>> refreshToken() async {
    try {
      final response = await apiClient.post(ApiEndpoints.refreshToken);

      final data = response.data['data'];

      return ApiResponse.success(AuthModel.fromJson(data as Map<String, dynamic>));
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
