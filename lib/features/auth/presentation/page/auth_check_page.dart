import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/features/auth/%20data/datasource/local/auth_local_datasource.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthCheckPage extends StatelessWidget {
  const AuthCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() async {
      final authLocalDataSource = getIt<AuthLocalDataSource>();

      final token = authLocalDataSource.getAccessToken();

      if (token != null && token.isNotEmpty) {
        context.router.replace(const HomeRoute());
      } else {
        context.router.replace(const LoginRoute());
      }
    });

    return const Scaffold(body: SizedBox.shrink());
  }
}
