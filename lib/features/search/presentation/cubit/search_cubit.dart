import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/domain/usecase/book_usecase.dart';
import 'package:books_online/features/home/domain/usecase/category_usecase.dart';
import 'package:books_online/features/search/domain/usecase/search_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchBooksUseCase _searchBooksUseCase;
  final GetAllBooksUsecase _allBooksUseCase;
  final GetAllCategoriesUsecase _allCategoriesUsecase;

  SearchCubit(this._searchBooksUseCase, this._allBooksUseCase, this._allCategoriesUsecase) : super(const SearchState());

  final TextEditingController searchController = TextEditingController();

  Future<void> getDefaultBooks() async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading, isSearching: false, selectedCategoryId: 0, searchResults: []));

    try {
      final result = await _allBooksUseCase();

      if (isClosed) return;

      emit(state.copyWith(status: Status.success, book: result.take(4).toList(), searchResults: [], isSearching: false, selectedCategoryId: 0));
    } catch (e) {
      if (isClosed) return;

      emit(state.copyWith(status: Status.failure, mess: e.toString()));
    }
  }

  Future<void> getCategories() async {
    if (isClosed) return;

    final result = await _allCategoriesUsecase();

    if (isClosed) return;

    if (result.isSuccess) {
      emit(state.copyWith(categories: result.data ?? []));
    }
  }

  Future<void> searchBooks(String query, {int? categoryId}) async {
    if (isClosed) return;

    final value = query.trim();

    final selectedCategory = categoryId ?? state.selectedCategoryId;

    // All + empty search
    if (selectedCategory == 0 && value.isEmpty) {
      await getDefaultBooks();
      return;
    }

    emit(state.copyWith(status: Status.loading, isSearching: true, selectedCategoryId: selectedCategory));

    final result = await _searchBooksUseCase(query: value, categoryId: selectedCategory == 0 ? null : selectedCategory);

    if (isClosed) return;

    if (result.isSuccess) {
      final books = result.data ?? [];

      if (books.isEmpty) {
        emit(state.copyWith(status: Status.notfound, searchResults: [], isSearching: true));
      } else {
        emit(state.copyWith(status: Status.success, searchResults: books, isSearching: true));
      }
    } else {
      emit(state.copyWith(status: Status.failure, searchResults: [], isSearching: true));
    }
  }

  @override
  Future<void> close() async {
    searchController.dispose();
    return super.close();
  }
}
