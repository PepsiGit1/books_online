import 'package:books_online/core/constants/app_constants.dart';
import 'package:books_online/core/storage/local_storage.dart';
import 'package:books_online/features/auth/%20data/model/auth_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthLocalDataSource {
  Future<bool> saveAccessToken(String token);

  String? getAccessToken();

  Future<bool> saveUser(UserModel user);

  UserModel? getUser();

  Future<bool> clearAuth();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final LocalStorage localStorage;

  AuthLocalDataSourceImpl(this.localStorage);

  @override
  Future<bool> saveAccessToken(String token) {
    return localStorage.setString(AppConstants.keyAccessToken, token);
  }

  @override
  String? getAccessToken() {
    return localStorage.getString(AppConstants.keyAccessToken);
  }

  @override
  Future<bool> saveUser(UserModel user) {
    return localStorage.setJson(AppConstants.keyUser, user.toJson());
  }

  @override
  UserModel? getUser() {
    final json = localStorage.getJson(AppConstants.keyUser);

    if (json == null) return null;

    return UserModel.fromJson(json);
  }

  @override
  Future<bool> clearAuth() async {
    await localStorage.remove(AppConstants.keyAccessToken);
    await localStorage.remove(AppConstants.keyUser);

    return true;
  }
}
