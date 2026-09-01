import 'package:books_online/core/widgets/card_book_row_widget.dart';
import 'package:books_online/core/widgets/card_book_widget.dart';
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: AppSearchBar(controller: cubit.searchController), centerTitle: true),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 20),
                SizedBox(
                  height: size.height * 0.38,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (_, __) => const SizedBox(width: 10),
                    itemBuilder: (context, index) {
                      return CardBookWidget(
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOTl8C5uegu9JKL959rk3pbNgiB7cwrXAbKRrWY4lJPCyfzD-eErf8gZq6&s=10',
                        title: 'The Psychology of Money',
                        author: 'Morgan Housel',
                        rating: 4.8,
                        onPressed: () {
                          print('Book $index clicked');
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text("Continue Reading", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                SizedBox(
                  height: size.height * 0.12,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    separatorBuilder: (_, __) => const SizedBox(width: 20),
                    itemBuilder: (context, index) {
                      return CardBookRowWidget(
                        title: 'Think and Grow Rich',
                        author: 'Napoleon Hill',
                        coverImageUrl: 'https://kitabcorner.in/wp-content/uploads/2024/02/think-and-grow-rich-book-online-at-Kitab-Corner-1.webp',
                        rating: 3,
                        progress: 0.1,
                        isPremium: true,
                        isSaved: true,
                        onBookmarkTap: () {
                          print('Bookmark tapped for book $index');
                        },
                        onTap: () {
                          print('Book $index tapped');
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
