import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/carousel_model.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  final TextEditingController searchController = TextEditingController();

  void changePage(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void loadMockData() {
    emit(state.copyWith(status: Status.success, carousels: CarouselModel.mockCarouselData));
  }

  void loadMockBooksData() {
    final books = BookModel.mockData;

    emit(state.copyWith(status: Status.success, categories: CategoryModel.mockData, allBooks: books, book: books, selectedCategoryId: 1));
  }

  void loadCategoryData() {
    emit(state.copyWith(status: Status.success, categories: CategoryModel.mockData));
  }

  void selectCategory(int categoryId) {
    final allBooks = state.allBooks;

    final filteredBooks = categoryId == 1 ? allBooks : allBooks.where((book) => book.categoryId == categoryId).toList();

    emit(state.copyWith(selectedCategoryId: categoryId, book: filteredBooks));
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
