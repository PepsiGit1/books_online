import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/%20data/model/auth_request_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<AuthModel> register(RegisterRequestModel request);

  Future<AuthModel> login(LoginRequestModel request);

  Future<AuthModel> refreshToken();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<AuthModel> register(RegisterRequestModel request) async {
    final response = await apiClient.post(ApiEndpoints.register, data: request.toJson());

    return AuthModel.fromJson(response.data['data']);
  }

  @override
  Future<AuthModel> login(LoginRequestModel request) async {
    final response = await apiClient.post(ApiEndpoints.login, data: request.toJson());

    return AuthModel.fromJson(response.data['data']);
  }

  @override
  Future<AuthModel> refreshToken() async {
    final response = await apiClient.post(ApiEndpoints.refreshToken);

    return AuthModel.fromJson(response.data['data']);
  }
}
