import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/auth/%20data/datasource/local/auth_local_datasource.dart';
import 'package:books_online/features/auth/%20data/datasource/remote/auth_remote_datasource.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/%20data/model/auth_request_model.dart';
import 'package:books_online/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<ApiResponse<AuthModel>> login(LoginRequestModel request) async {
    final result = await remoteDataSource.login(request);

    if (result.isSuccess && result.data != null) {
      await _saveAuth(result.data!);
    }

    return result;
  }

  @override
  Future<ApiResponse<AuthModel>> register(RegisterRequestModel request) async {
    final result = await remoteDataSource.register(request);

    if (result.isSuccess && result.data != null) {
      await _saveAuth(result.data!);
    }

    return result;
  }

  @override
  Future<ApiResponse<AuthModel>> refreshToken() async {
    final result = await remoteDataSource.refreshToken();

    if (result.isSuccess && result.data != null) {
      await _saveAuth(result.data!);
    }

    return result;
  }

  Future<void> _saveAuth(AuthModel auth) async {
    await localDataSource.saveAccessToken(auth.accessToken);
    await localDataSource.saveUser(auth.user);
  }
}
