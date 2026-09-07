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
                    ..getAllBooks()
                    ..getCategories(),
        ),
        BlocProvider(
          create:
              (_) =>
                  getIt<SearchCubit>()
                    ..getDefaultBooks()
                    ..getCategories(),
        ),
      ],
      child: this,
    );
  }

  static const List<Widget> pages = [HomeContent(), SearchPage(), Center(child: Text('favor')), Center(child: Text('Profile'))];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,

          body: pages[state.currentIndex],

          bottomNavigationBar: SalomonBottomBar(
            currentIndex: state.currentIndex,
            onTap: (index) {
              context.read<HomeCubit>().changePage(index);
            },
            items: [
              SalomonBottomBarItem(icon: const Icon(Icons.home), title: const Text('Home'), selectedColor: AppColors.primary),

              SalomonBottomBarItem(icon: const Icon(Icons.search), title: const Text('Search'), selectedColor: Colors.orange),

              SalomonBottomBarItem(icon: const Icon(Icons.favorite_border), title: const Text('Likes'), selectedColor: Colors.pink),

              SalomonBottomBarItem(icon: const Icon(Icons.person), title: const Text('Profile'), selectedColor: Colors.teal),
            ],
          ),
        );
      },
    );
  }
}
