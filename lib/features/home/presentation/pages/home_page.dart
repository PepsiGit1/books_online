import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../widgets/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<Widget> pages = [HomeContent(), Center(child: Text('Favorites')), Center(child: Text('Search')), Center(child: Text('Profile'))];

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
