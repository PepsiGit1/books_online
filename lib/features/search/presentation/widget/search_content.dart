import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/core/enum/status.dart';
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
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state.status == Status.failure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.mess.isNotEmpty ? state.mess : 'Something went wrong')));
        }
      },
      builder: (context, state) {
        final books = state.isSearching ? state.searchResults : state.book.take(4).toList();

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),

                CategoryTabsWidget(
                  selectedCategoryId: state.selectedCategoryId,
                  categories: [const CategoryModel(id: 0, name: 'All'), ...state.categories],
                  onCategorySelected: (categoryId) {
                    context.read<SearchCubit>().searchBooks(context.read<SearchCubit>().searchController.text, categoryId: categoryId);
                  },
                ),

                const SizedBox(height: 20),

                Expanded(child: _buildBooksContent(context, state, books)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBooksContent(BuildContext context, SearchState state, List books) {
    if (state.status == Status.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.isSearching && state.status == Status.notfound) {
      return const Center(child: Text('No books found'));
    }

    if (books.isEmpty) {
      return const Center(child: Text('No books available'));
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.5,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];

        return CardBookWidget(
          imageUrl: '${ApiEndpoints.baseUrl}${book.coverImageUrl ?? ''}',
          title: book.title,
          author: book.author ?? '',
          rating: book.rating ?? 0,
          onPressed: () {
            debugPrint('Book ${book.id} clicked');
          },
        );
      },
    );
  }
}
