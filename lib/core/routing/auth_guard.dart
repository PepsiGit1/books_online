import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/features/auth/%20data/datasource/local/auth_local_datasource.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthGuard extends AutoRouteGuard {
  final AuthLocalDataSource _localDataSource;

  AuthGuard(this._localDataSource);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final token = _localDataSource.getAccessToken();

    if (token != null && token.isNotEmpty) {
      resolver.next(true);
      return;
    }

    router.replace(const LoginRoute());
  }
}
