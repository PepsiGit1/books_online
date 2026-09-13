import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/widgets/card_book_row_widget.dart';
import 'package:books_online/core/widgets/card_book_widget.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:books_online/features/home/presentation/widgets/carsoudel_widget.dart';
import 'package:books_online/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final savedBooks = state.allBooks.where((book) => book.isSaved).toList();
          final categories = [const CategoryModel(id: 0, name: 'All'), ...state.categories];
          return RefreshIndicator(
            onRefresh: () async {
              await context.read<HomeCubit>().getAllBooks();
            },
            child: SingleChildScrollView(
              // physics: const AlwaysScrollableScrollPhysics(),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      AppCarousel(items: state.carousels),
                      const SizedBox(height: 20),
                      CategoryWidget(
                        categories: categories,
                        selectedIndex: categories.indexWhere((category) => category.id == state.selectedCategoryId),
                        onSelected: (index) {
                          final category = categories[index];

                          context.read<HomeCubit>().selectCategory(category.id);
                        },
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: size.height * 0.38,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.book.length,
                          separatorBuilder: (_, __) => const SizedBox(width: 10),
                          itemBuilder: (context, index) {
                            final book = state.book.isNotEmpty ? state.book[index] : null;
                            return CardBookWidget(
                              imageUrl: '${ApiEndpoints.baseUrl}${book?.coverImageUrl ?? ''}',
                              title: book?.title ?? '',
                              author: book?.author ?? '',
                              rating: book?.rating ?? 0,
                              isPremier: book?.isPremium,
                              onPressed: () {
                                if (book == null) return;
                                context.router.push(HomeDetailRoute(book: book));
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
                          itemCount: savedBooks.length,
                          separatorBuilder: (_, __) => const SizedBox(width: 20),
                          itemBuilder: (context, index) {
                            final book = savedBooks[index];
                            return CardBookRowWidget(
                              title: book.title,
                              author: book.author ?? '',
                              coverImageUrl: book.coverImageUrl ?? '',
                              rating: book.rating ?? 0,
                              progress: book.progress ?? 0,
                              isPremium: book.isPremium,
                              isSaved: book.isSaved,
                              onBookmarkTap: () {
                                debugPrint('Bookmark tapped for book ${book.id}');
                              },
                              onTap: () {
                                context.router.push(HomeDetailRoute(book: book));
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
        },
      ),
    );
  }
}
