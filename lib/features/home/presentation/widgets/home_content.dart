import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:books_online/features/home/presentation/widgets/app_search.dart';
import 'package:books_online/features/home/presentation/widgets/carsoudel_widget.dart';
import 'package:books_online/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(title: AppSearchBar(controller: cubit.searchController), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              AppCarousel(
                items: [
                  CarouselItem(
                    title: 'The APOLOGY',
                    subtitle: 'Ross Watkins',
                    onPressed: () {
                      print('Flutter clicked');
                    },
                    img: "https://d3f44jafdqsrtg.cloudfront.net/books/THE-APOLOGY.jpg",
                  ),
                  CarouselItem(
                    title: 'Across the Street from Wall Street',
                    subtitle: 'Dave Gretta',
                    onPressed: () {
                      print('Dart clicked');
                    },
                    img: "https://nighttradingbook.com/wp-content/uploads/2024/09/WALL_STREET_BOOK_IMAGE-01.png",
                  ),
                  CarouselItem(
                    title: 'The Elephants Apology',
                    subtitle: 'Alice Talwin Morris',
                    onPressed: () {
                      print('Architecture clicked');
                    },
                    img: "https://i.ebayimg.com/images/g/nawAAeSwARZnsFta/s-l1200.jpg",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CategoryWidget(
                categories: const ['All', 'Fiction', 'Romance', 'Science', 'History', 'Technology'],
                selectedIndex: 0,
                onSelected: (index) {
                  print('Selected: $index');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
