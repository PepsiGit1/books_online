import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:books_online/features/search/presentation/cubit/search_cubit.dart';
import 'package:books_online/features/search/presentation/page/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../widgets/home_content.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  getIt<HomeCubit>()
                    ..loadMockData()
                    ..loadMockBooksData()
                    ..loadCategoryData(),
        ),
        BlocProvider(create: (_) => getIt<SearchCubit>()..loadMockBooksData()),
      ],
      child: this,
    );
  }

  static const List<Widget> pages = [HomeContent(), SearchPage(), Center(child: Text('Favorites')), Center(child: Text('Profile'))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true), body: const HomeContent());
  }
}
