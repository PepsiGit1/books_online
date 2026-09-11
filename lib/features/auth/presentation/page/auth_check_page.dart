import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthCheckPage extends StatelessWidget implements AutoRouteWrapper {
  const AuthCheckPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<AuthCubit>()..checkAuth(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            context.router.replace(const HomeRoute());
          }

          if (state.status == Status.failure) {
            context.router.replace(const LoginRoute());
          }
        },
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
