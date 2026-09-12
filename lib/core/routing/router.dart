import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/routing/auth_guard.dart';
import 'package:books_online/features/auth/presentation/page/auth_check_page.dart';
import 'package:books_online/features/auth/presentation/page/login.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/presentation/pages/home_detail.dart';
import 'package:books_online/features/home/presentation/pages/home_page.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';
import 'package:books_online/features/home/presentation/pages/payment_page.dart';
import 'package:books_online/features/home/presentation/pages/payment_success_page.dart';
import 'package:books_online/features/profile/presentation/page/change_password_page.dart';
import 'package:books_online/features/profile/presentation/page/profile_page.dart';
import 'package:books_online/features/search/presentation/page/search.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final AuthGuard authGuard;

  AppRouter(this.authGuard);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthCheckRoute.page, path: '/', initial: true),

    AutoRoute(page: LoginRoute.page, path: '/login'),

    AutoRoute(page: HomeRoute.page, path: '/home', guards: [authGuard]),

    AutoRoute(page: HomeDetailRoute.page, path: '/home-detail/:id', guards: [authGuard]),

    AutoRoute(page: ProfileRoute.page, path: '/profile', guards: [authGuard]),

    AutoRoute(page: ChangePasswordRoute.page, path: '/change-password', guards: [authGuard]),

    AutoRoute(page: PaymentRoute.page, path: '/payment', guards: [authGuard]),

    AutoRoute(page: PaymentSuccessRoute.page, path: '/payment/success', guards: [authGuard]),
  ];
}
