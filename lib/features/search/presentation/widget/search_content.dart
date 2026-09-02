import 'package:books_online/core/widgets/card_book_widget.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/search/presentation/cubit/search_cubit.dart';
import 'package:books_online/features/search/presentation/widget/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchContent extends StatelessWidget {
  const SearchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        debugPrint('🔵 SearchContent build, cubit instance: ${context.read<SearchCubit>().hashCode}');
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                CategoryTabsWidget(
                  selectedCategoryId: 1,
                  categories: const [CategoryModel(id: 1, name: 'All'), CategoryModel(id: 2, name: 'Fiction'), CategoryModel(id: 3, name: 'Romance')],
                  onCategorySelected: (categoryId) {
                    debugPrint('Selected: $categoryId');
                  },
                ),

                const SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.5,
                    ),
                    itemCount: state.book.length,
                    itemBuilder: (BuildContext context, int index) {
                      final book = state.book[index];
                      return CardBookWidget(
                        imageUrl: book.coverImageUrl ?? '',
                        title: book.title,
                        author: book.author ?? '',
                        rating: book.rating ?? 0,
                        onPressed: () => print('Book $index clicked'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
