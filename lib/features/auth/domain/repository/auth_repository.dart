import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/%20data/model/auth_request_model.dart';

abstract class AuthRepository {
  Future<ApiResponse<AuthModel>> register(RegisterRequestModel request);

  Future<ApiResponse<AuthModel>> login(LoginRequestModel request);

  Future<ApiResponse<AuthModel>> refreshToken();
}
