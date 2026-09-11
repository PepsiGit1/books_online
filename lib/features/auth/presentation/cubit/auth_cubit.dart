import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/auth/%20data/datasource/local/auth_local_datasource.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:books_online/features/auth/domain/usecase/login_usecase.dart';
import 'package:books_online/features/auth/domain/usecase/register_usecase.dart';
import 'package:books_online/features/auth/domain/usecase/refresh_token_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final RegisterUseCase _registerUseCase;
  final LoginUseCase _loginUseCase;
  final RefreshTokenUseCase _refreshTokenUseCase;
  final AuthLocalDataSource _localDataSource;

  AuthCubit(this._registerUseCase, this._loginUseCase, this._refreshTokenUseCase, this._localDataSource) : super(const AuthState());

  Future<void> register({required String email, required String password}) async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading, mess: ''));

    final result = await _registerUseCase(email: email, password: password);

    if (isClosed) return;

    if (result.isSuccess && result.data != null) {
      final auth = result.data!;

      emit(state.copyWith(status: Status.success, user: auth.user, accessToken: auth.accessToken, mess: 'Registered successfully.'));
    } else {
      emit(state.copyWith(status: Status.failure, mess: result.error ?? 'Registration failed.'));
    }
  }

  Future<void> login({required String email, required String password}) async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading, mess: ''));

    final result = await _loginUseCase(email: email, password: password);

    if (isClosed) return;

    if (result.isSuccess && result.data != null) {
      final auth = result.data!;

      emit(state.copyWith(status: Status.success, user: auth.user, accessToken: auth.accessToken, mess: 'Logged in successfully.'));
    } else {
      emit(state.copyWith(status: Status.failure, mess: result.error ?? 'Login failed.'));
    }
  }

  Future<void> refreshToken() async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading, mess: ''));

    final result = await _refreshTokenUseCase();

    if (isClosed) return;

    if (result.isSuccess && result.data != null) {
      final auth = result.data!;

      emit(state.copyWith(status: Status.success, user: auth.user, accessToken: auth.accessToken, mess: ''));
    } else {
      emit(state.copyWith(status: Status.failure, mess: result.error ?? 'Refresh token failed.'));
    }
  }

  Future<void> checkAuth() async {
    if (isClosed) return;

    print('AUTH CHECK: START');

    emit(state.copyWith(status: Status.loading, mess: ''));

    print('AUTH CHECK: calling refresh token');

    final result = await _refreshTokenUseCase();

    print('AUTH CHECK: refresh completed');
    print('AUTH CHECK: success = ${result.isSuccess}');
    print('AUTH CHECK: error = ${result.error}');

    if (isClosed) return;

    if (result.isSuccess && result.data != null) {
      final auth = result.data!;

      print('AUTH CHECK: SUCCESS');

      emit(state.copyWith(status: Status.success, user: auth.user, accessToken: auth.accessToken, mess: ''));

      return;
    }

    print('AUTH CHECK: FAILURE');

    emit(state.copyWith(status: Status.failure, user: null, accessToken: null, mess: result.error ?? 'Authentication failed.'));
  }
}
