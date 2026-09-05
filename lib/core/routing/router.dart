import 'package:auto_route/auto_route.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/presentation/pages/home_detail.dart';
import 'package:books_online/features/home/presentation/pages/home_page.dart';
import 'package:books_online/features/search/presentation/page/search.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: HomeRoute.page, initial: true), AutoRoute(page: HomeDetailRoute.page, path: '/home-detail/:id')];
}
