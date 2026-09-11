part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default(Status.initial) Status status, @Default('') String mess, UserModel? user, String? accessToken}) = _AuthState;
}
