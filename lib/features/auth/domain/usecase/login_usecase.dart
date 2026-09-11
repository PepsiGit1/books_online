import 'package:books_online/core/api/api_response.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/%20data/model/auth_request_model.dart';
import 'package:books_online/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<ApiResponse<AuthModel>> call({required String email, required String password}) {
    return repository.login(LoginRequestModel(email: email, password: password));
  }
}
